module PropertiesHelper

  def additional_fields
    case @property.type
    when 'House' then 'house_fields'
    when 'ComplexBuilding' then 'complex_building_fields'
    when 'CommercialUnit' then 'commercial_unit_fields'
      
    end
  end
end
