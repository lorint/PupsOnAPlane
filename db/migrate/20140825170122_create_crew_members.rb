class CreateCrewMembers < ActiveRecord::Migration
  def change
    create_table :crew_members do |t|
      t.string :name
      t.references :home_airport, index: true

      t.timestamps
    end
  end
end
