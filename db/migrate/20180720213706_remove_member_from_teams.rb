class RemoveMemberFromTeams < ActiveRecord::Migration[5.2]
  def change
    remove_column :teams, :member_1
    remove_column :teams, :member_2
    remove_column :teams, :member_3
    remove_column :teams, :member_4
  end
end
