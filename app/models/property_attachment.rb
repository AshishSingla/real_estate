class PropertyAttachment < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  belongs_to :property
end
