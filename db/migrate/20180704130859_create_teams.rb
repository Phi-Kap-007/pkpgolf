class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.time :tee_off_time

      t.timestamps
    end
  end
end
