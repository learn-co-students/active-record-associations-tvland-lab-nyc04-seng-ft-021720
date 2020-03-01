class Show < ActiveRecord::Base

    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        self.actors.map {|show| show.actor.first_name + " " + show.actor.last_name}
    end

    def build_network(call_letters)
        
    end

end

# binding.pry