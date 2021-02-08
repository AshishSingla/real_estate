class CommercialUnitsController < PropertiesController

  private

    def property_fields
      property_params.merge!(additional_fields: get_additional_fields)
    end

    def get_additional_fields
      { 
        shops: additional_params[:shops].to_i, 
        parking: additional_params[:parking].to_i, 
      }
    end

    def additional_params
      property_params[:additional_fields]
    end

    def property_params
      params.require(:commercial_unit).permit(:type, :owner, :address, :sqmt, :price, additional_fields: [:shops, :parking])
    end
end