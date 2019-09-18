class Show < ActiveRecord::Base
 has_many :characters
  has_many :actors, through: :characters
  belongs_to :network  
  
  def full_name
    name = "#{characters.first_name} #{characters.last_name}"
  end
  
  def actors_list
    #binding.pry
   self.actors.name.count
  end
  
end