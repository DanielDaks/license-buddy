class AddAttachmentToCourses < ActiveRecord::Migration
  def self.up
    add_attachment :courses, :avatar
  end

  def self.down
    remove_attachment :courses, :avatar
  end
end
