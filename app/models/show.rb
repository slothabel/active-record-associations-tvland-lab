require 'pry'
class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network
  
    def actors_list
        # binding.pry
        actors_name = []
        first_name = self.actors.collect{|i| i.first_name}
        last_name = self.actors.collect{|i| i.last_name}
        actors_name << "#{first_name.first} #{last_name.first}"
        actors_name
    end

end