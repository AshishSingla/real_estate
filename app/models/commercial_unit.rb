class CommercialUnit < Property

  store_accessor :additional_fields, :shops
  validates :shops, numericality: { less_than_or_equal_to: 100}

end
