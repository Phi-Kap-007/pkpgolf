ActiveAdmin.register Team do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
  actions :all

  index do
    selectable_column
    column :id
    column :name
    column :created_at
    column :users
    actions
  end

  permit_params do
    permitted = [:name, :tee_off_time]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end

  controller do
    def create
      # Good
      @team = Team.new(permitted_params[:team])

      if @team.save
        # Don't know if that's correct...
        redirect_to admin_teams_url
      end
    end
  end
end
