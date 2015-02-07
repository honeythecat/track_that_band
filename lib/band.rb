class Band < ActiveRecord::Base
  has_and_belongs_to_many :venues
  validates :band_name, { presence: true, length: { maximum: 100 } }
  before_save :titlecase_band_name

private

  def titlecase_band_name
    self.band_name = band_name.titlecase
  end
end
