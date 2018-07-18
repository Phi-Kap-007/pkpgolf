class BrothersController < ApplicationController
  def index
    @brothers = Brother.all
    # Create Function that lists brothers scores: the lowest goes on top.
  end

  def show

  end
end
