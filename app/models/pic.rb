class Pic < ActiveRecord::Base
  validates :title, :description, presence: true
  validates :price, numericality: { only_integer: true }
  belongs_to :category
  has_attached_file :image, :styles => { :medium => "200x200>", :lg => "700x700>"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  include PgSearch
  pg_search_scope( :search_everywhere, against: [:title, :description])
end
