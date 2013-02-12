class Klass < ActiveRecord::Base
  attr_accessible :credit, :description, :name, :price, :hours, :user_id
   belongs_to :user
   validates :credit, :description, :name, :price, :hours, :presence => true
   validates :credit, :price, :hours, :numericality => true
end