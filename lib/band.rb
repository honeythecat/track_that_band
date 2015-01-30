class Band < ActiveRecord::Base
  has_and_belongs_to_many :venues
  validates(:band_name, { :presence => true, :length => { maximum: 100 } })
  before_save(:titlecase_band_name)

private

  define_method(:titlecase_band_name) do
    self.band_name=(band_name().titlecase())
  end
end
