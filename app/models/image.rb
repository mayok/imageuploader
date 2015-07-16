class Image < ActiveRecord::Base
  has_many :comments
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :picture, presence: true

  def pictures
    Image.all
  end
end
