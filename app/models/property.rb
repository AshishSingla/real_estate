class Property < ApplicationRecord

  self.per_page = 5

  validates :owner, :address, presence: true

  has_many :property_attachments
  accepts_nested_attributes_for :property_attachments

end
