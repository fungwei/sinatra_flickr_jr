class Photo < ActiveRecord::Base
  mount_uploader :path, PhotoUploader
  belongs_to :album

  validates :album_id, presence: true
  validates :path, presence: true
end
