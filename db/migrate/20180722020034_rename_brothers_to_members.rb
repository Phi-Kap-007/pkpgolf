class RenameBrothersToMembers < ActiveRecord::Migration[5.2]
  def change
    rename_table :brothers, :members
  end
end
