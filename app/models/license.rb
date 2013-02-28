class License < ActiveRecord::Base
  attr_accessible :description, :license, :organization, :state
  has_many :users
  has_many :statutes
  has_many :requirements, :through => :statutes
end