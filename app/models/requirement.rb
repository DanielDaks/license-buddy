class Requirement < ActiveRecord::Base
  attr_accessible :attribute, :max, :min
  has_many :statutes
  has_many :licenses, :through => :statutes
end