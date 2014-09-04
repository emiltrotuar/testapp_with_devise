class Image < ActiveRecord::Base
  mount_uploader :path, ImageUploader
  validates :name, presence: true
  belongs_to :user
end
