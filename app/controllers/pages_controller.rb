class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def home
  end

  def index

  end

  def contact
  end

  def about
  end
end
