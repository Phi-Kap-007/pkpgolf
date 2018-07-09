class BrothersController < ApplicationController
  def index
    @brothers = Brother.all
  end

  def show
  end

  def new
    @brother = Brother.new
  end

  def create
    # Uncomment after creating brother params (whatever that is)
      # Brother.create(brothers_params)
      #redirect_to brothers_path
  end

  def edit

  end

  def update
    # Uncomment after creating brother params (whatever that is)
      # @brother.update(brother_params)
      # redirect_to brother_path(@brother)
  end

  def destroy
    # Uncomment after creating brother params (whatever that is)
      # @brother.destroy
      # redirect_to brothers_path
  end
end
