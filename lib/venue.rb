class Venue < ActiveRecord::Base
  validates(:venue, { :presence => true, :length => {max: 100} })

end
