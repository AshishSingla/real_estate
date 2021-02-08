class ComplexBuildingsController < PropertiesController

  private

    def property_fields
      property_params.merge!(additional_fields: get_additional_fields)
    end

    def get_additional_fields
      { 
        units: additional_params[:units].to_i, 
      }
    end

    def additional_params
      property_params[:additional_fields]
    end

    def property_params
      params.require(:complex_building).permit(:type, :owner, :address, :sqmt, :price, additional_fields: [:units])
    end
end