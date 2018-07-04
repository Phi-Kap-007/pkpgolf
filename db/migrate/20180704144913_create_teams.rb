class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :tee_off_time
      t.integer :score

      t.timestamps
    end
  end
end
