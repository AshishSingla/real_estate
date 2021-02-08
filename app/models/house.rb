class House < Property

  store_accessor :additional_fields, :rooms
  validates :rooms, numericality: { less_than_or_equal_to: 100}
end
