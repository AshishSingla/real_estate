class ComplexBuilding < Property

  store_accessor :additional_fields, :units
  validates :units, numericality: { less_than_or_equal_to: 100}

end
