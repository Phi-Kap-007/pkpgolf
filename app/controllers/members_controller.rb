class MembersController < ApplicationController
  def index
    @members = Member.all
    # Create Function that lists members scores: the lowest goes on top.
  end

  def show

  end
end
