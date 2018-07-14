class Photo < ApplicationRecord
 
mount_uploader :image, ImageUploader
serialize :images, JSON # If you use SQLite, add this line.

validates_processing_of :image
validate :image_size_validation
 
validates :name, length: {minimum: 3, maximum: 50}, allow_blank: false
validates :description,  length: {minimum: 5, maximum: 200}, allow_blank: false

def self.search(search)
  where("name LIKE ?", "%#{search}%") 
end

private
  def image_size_validation
    errors[:image] << "Image should be less than 5MB" if image.size > 5.megabytes
  end
end

 
