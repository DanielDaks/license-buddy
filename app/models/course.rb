class Course < ActiveRecord::Base
  attr_accessible :credit, :description, :hours, :name, :price, :user_id, :filename, :data, :mime_type, :distro, :avatar
   
  belongs_to :user

  has_attached_file :avatar
  
  validates :credit, :name, :presence => true
  validates :credit, :numericality => true
end
