class Statute < ActiveRecord::Base
  attr_accessible :deadline, :license_id, :requirement_id
  belongs_to :requirement
  belongs_to :license
end