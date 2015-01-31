class RemoveVenuesColumn < ActiveRecord::Migration
  def change
    remove_column(:venues, :venues, :datetime)
  end
end
