class HousesController < PropertiesController

  private

    def property_fields
      property_params.merge!(additional_fields: get_additional_fields)
    end

    def get_additional_fields
      { 
        rooms: additional_params[:rooms].to_i, 
        floors: additional_params[:floors].to_i, 
        air_conditioner: additional_params[:air_conditioner] == '1' ? true : false
      }
    end

    def additional_params
      property_params[:additional_fields]
    end

    def property_params
      params.require(:house).permit(:type, :owner, :address, :sqmt, :price, additional_fields: [:rooms, :floors, :air_conditioner])
    end
end