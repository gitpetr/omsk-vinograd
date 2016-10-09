class Pic < ActiveRecord::Base

  has_attached_file :image, :styles => { :medium => "200x200>", :lg => "1000x1000>"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
