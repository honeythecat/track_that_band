class CreateVenues < ActiveRecord::Migration
  def change
    create_table(:venues) do |t|
      t.column(:venues, :string)
      t.timestamps
    end
  end
end
