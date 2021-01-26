class CreateAdventurers < ActiveRecord::Migration[6.1]
  def change
    create_table :adventurers do |t|
      t.string :name
      t.string :by
      t.string :Scott
      t.string :Wachal

      t.timestamps
    end
  end
end
