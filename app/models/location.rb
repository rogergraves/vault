class Location < ApplicationRecord

  validates :title, :description, :address, :order_email, presence: true
  validate :json_format

  mount_uploader :header_image, HeaderImageUploader
  mount_uploaders :gallery, GalleryUploader


  protected

  def json_format
    hash = JSON.parse self.prises  rescue hash = false
    errors[:base] << 'not in json format. Example: {"Private Office":"$522", "Dedicated Desk":"$450", "Hot Desk":"$350"}' unless hash
  end


end
