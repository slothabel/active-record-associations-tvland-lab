require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = []
    character_name = self.characters.collect{|i| i.name}
    show_names = self.shows.collect{|i| i.name}
    roles << "#{character_name.first} - #{show_names.first}"
    roles
  end
end