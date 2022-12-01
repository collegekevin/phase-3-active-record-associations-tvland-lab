class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

def actors_list
    self.actors.map do |actor|
        #I originally tried self.characters.actors.map... I don't 
        #have to do that. I already have acceess to actors. 
        #No need to go through characters each time
        actor.first_name + " " + actor.last_name
        #I already did the first name in actor
        #could have just done actor.full_name
    end
end


end