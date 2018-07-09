class CreateBrothers < ActiveRecord::Migration[5.2]
  def change
    create_table :brothers do |t|
      t.integer :team_id
      t.string :first_name
      t.string :last_name
      t.integer :induction_year
      t.integer :score

      t.timestamps
    end
  end
end
