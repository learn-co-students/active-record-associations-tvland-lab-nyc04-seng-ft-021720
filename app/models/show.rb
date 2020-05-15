require "pry"

class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    actors.map do |name|
      "#{name.first_name} #{name.last_name}"  
    
    end 

  end

end 



# def list_roles
#   characters.map do |character|
#       "#{character.name} - #{character.show.name}"
#   end 
#   end 