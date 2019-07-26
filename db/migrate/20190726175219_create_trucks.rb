class CreateTrucks < ActiveRecord::Migration[5.1]
  def change
    create_table :trucks do |t|
      t.string :applicant
      t.string :address
      t.string :status
      t.string :fooditems
      t.string :dayshours
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
