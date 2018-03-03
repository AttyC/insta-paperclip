class Photo < ApplicationRecord
  #Mounts paperclip image
  has_attached_file :image
  #This validates the type of file uploaded. According to this, only images are allowed.
  #Validates file, file type and file size
  validates_attachment :image, presence: true,
  content_type: { content_type: "image/jpeg" },
  size: { in: 0..1000.kilobytes }
  belongs_to :user, :optional => true
end
