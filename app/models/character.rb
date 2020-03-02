class Character < ActiveRecord::Base

    belongs_to :actor
    belongs_to :show
  
    def say_that_thing_you_say
        phrase = self.catchphrase
        "#{self.name} always says: #{phrase}"
    end

    def build_show(show_name)
        new_show = Show.create(show_name)
        new_show.characters << self
        new_show
        # new_show.build_network
    end

end