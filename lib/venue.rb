class Venue < ActiveRecord::Base
  has_and_belongs_to_many :bands
  validates(:venue_name, { :presence => true, :length => { maximum: 100 } })
  before_save(:titlecase_venue_name)

private

  define_method(:titlecase_venue_name) do
    self.venue_name=(venue_name().titlecase())
  end
end
