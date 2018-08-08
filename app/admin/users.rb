ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
  actions :all, except: [:update, :destroy]

  permit_params do
    permitted = [:first_name, :last_name, :score_hole_1, :score_hole_2,
      :score_hole_3, :score_hole_4, :score_hole_5, :score_hole_6, :score_hole_7,
      :score_hole_8, :score_hole_9, :score_first_half, :score_hole_10, :score_hole_11,
      :score_hole_12, :score_hole_13, :score_hole_14, :score_hole_15, :score_hole_16,
      :score_hole_17, :score_hole_18, :score_second_half, :total_score,]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end

  controller do
    def create
      # Good
      @user = User.new(permitted_params[:user])

      if @user.save
        # Don't know if that's correct...
        redirect_to teams_path
      end
    end
  end
end
