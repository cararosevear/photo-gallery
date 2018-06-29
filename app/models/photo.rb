class Photo < ApplicationRecord
 
mount_uploader :image, ImageUploader
serialize :images, JSON # If you use SQLite, add this line.

validates_processing_of :image
validate :image_size_validation
 
validates :name, length: {minimum: 5, maximum: 50}, allow_blank: false
validates :description,  length: {minimum: 10, maximum: 200}, allow_blank: false

def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

private
  def image_size_validation
    errors[:image] << "Image should be less than 5MB" if image.size > 5.megabytes
  end
end

 
