class Venue < ActiveRecord::Base
  has_and_belongs_to_many :bands
  validates(:venue, { :presence => true, :length => { maximum: 100 } })
  before_save(:titlecase_venue_name)

private

  define_method(:titlecase_band_name) do
    self.band_venue=(venue_name().titlecase())
  end
end
