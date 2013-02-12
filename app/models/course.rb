class Course < ActiveRecord::Base
  attr_accessible :credit, :description, :hours, :name, :price, :user_id
   
   	belongs_to :user
  
  validates :credit, :description, :name, :price, :hours, :presence => true
  validates :credit, :price, :hours, :numericality => true
end
