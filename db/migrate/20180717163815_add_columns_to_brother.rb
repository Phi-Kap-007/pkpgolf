class AddColumnsToBrother < ActiveRecord::Migration[5.2]
  def change
    add_column :brothers, :score_hole_1, :integer
    add_column :brothers, :score_hole_2, :integer
    add_column :brothers, :score_hole_3, :integer
    add_column :brothers, :score_hole_4, :integer
    add_column :brothers, :score_hole_5, :integer
    add_column :brothers, :score_hole_6, :integer
    add_column :brothers, :score_hole_7, :integer
    add_column :brothers, :score_hole_8, :integer
    add_column :brothers, :score_hole_9, :integer
    add_column :brothers, :score_first_half, :integer
    add_column :brothers, :score_hole_10, :integer
    add_column :brothers, :score_hole_11, :integer
    add_column :brothers, :score_hole_12, :integer
    add_column :brothers, :score_hole_13, :integer
    add_column :brothers, :score_hole_14, :integer
    add_column :brothers, :score_hole_15, :integer
    add_column :brothers, :score_hole_16, :integer
    add_column :brothers, :score_hole_17, :integer
    add_column :brothers, :score_hole_18, :integer
    add_column :brothers, :score_second_half, :integer
  end
end
