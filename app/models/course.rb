class Course < ActiveRecord::Base
  attr_accessible :credit, :description, :hours, :name, :price, :user_id, :filename, :data, :mime_type, :distro
   
   	belongs_to :user
  
  validates :credit, :name, :presence => true
  validates :credit, :numericality => true
end
