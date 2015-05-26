class Image < ActiveRecord::Base
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader

  def pictures
    Image.all
  end
end
