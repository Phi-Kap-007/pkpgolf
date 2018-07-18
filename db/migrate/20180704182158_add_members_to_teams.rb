class AddMembersToTeams < ActiveRecord::Migration[5.2]
  def change
    # add_column :teams, :members, :string
    add_column :teams, :member_1, :string
    add_column :teams, :member_2, :string
    add_column :teams, :member_3, :string
    add_column :teams, :member_4, :string
  end
end
