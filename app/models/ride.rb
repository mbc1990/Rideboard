require 'bcrypt'

class Ride < ActiveRecord::Base
  attr_accessible :comments, :date_range_end, :date_range_start, :email, :first_name, :last_name, :phash, :phone_number, :request, :address


  # validations
  validates_presence_of :date_range_end, :date_range_start, :email, :first_name, :last_name, :address 

  acts_as_gmappable


  def gmaps4rails_address
    address
  end

  def gmaps4rails_infowindow
      # add here whatever html content you desire, it will be displayed when users clicks on the marker
    "Name: #{self.first_name} #{self.last_name}
     <br />
     Leaving between: #{self.date_range_start.to_formatted_s(:long_ordinal)} and #{self.date_range_start.to_formatted_s(:long_ordinal)}
     <br />
     Phone number: #{self.phone_number}
     <br />
     Email: #{self.email}
     <br />
     Additional comments: #{self.comments}"     
  end
end
