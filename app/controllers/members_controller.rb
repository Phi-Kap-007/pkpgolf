class MembersController < ApplicationController
  def index
    @members = Member.all
    # Create Function that lists members scores: the lowest goes on top.
  end

  def show

  end

  def create
    @member = Member.create(member_params)
    redirect_to teams_path
  end

  private

  def member_params
    params.require(:member).permit(:first_name, :last_name)
  end
end
