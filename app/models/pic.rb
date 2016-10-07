class Pic < ActiveRecord::Base

  has_attached_file :image, :styles => { :medium => "300x300>", :lg => "900x900>"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
