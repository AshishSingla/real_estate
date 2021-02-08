class PropertiesController < ApplicationController
  before_action :set_property, only: %i[ show edit update destroy buy_property ]
  before_action :authenticate_user!, only: %i[ create edit update destroy buy_property ]

  def index
    @properties = property_class.includes(:property_attachments).paginate(page: params[:page]).order('created_at DESC')
  end

  def show
    @property_attachments = @property.property_attachments.all
  end

  def new
    @property = property_class.new
    @property_attachment = @property.property_attachments.build
  end

  def edit
  end

  def create
    @property = property_class.new(property_fields)

    respond_to do |format|
      if @property.save
        params[:property_attachments] && params[:property_attachments][:avatar].each do |a|
          @property_attachment = @property.property_attachments.create!(avatar: a, property_id: @property.id)
        end
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @property.update(property_fields)
        format.html { redirect_to @property, notice: "Property was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: "Property was successfully destroyed." }
    end
  end

  def buy_property
    VeryLongTask.perform_async({ id: params[:id], user_id: current_user.id })
    respond_to do |format|
      format.html { redirect_to properties_url, notice: "Your request has been sent to the owner." }
    end
  end

  private
    def set_property
      @property = Property.find(params[:id])
    end

    def property_params
      params.require(:property).permit(:type, :owner, :address, :sqmt, :price, additional_fields: [])
    end

    def property_class
      params[:type].present? ? params[:type].constantize : Property
    end
end
