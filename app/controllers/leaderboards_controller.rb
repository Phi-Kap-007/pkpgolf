class LeaderboardsController < ApplicationController
  before_action :query_options

  def show
    @lb = Boards.default_leaderboard
    @entries = entry_service.execute(query_options)

    respond_to do |format|
      format.html do
        paginate
      end
      format.json do
        render json: @entries
      end
    end
  end

  def query_options
    @limit = [params.fetch(:limit, 10).to_i, 100].min
    @page = params.fetch(:page, 1).to_i
    { page: @page, limit: @limit }
  end

  def paginate
    pager = Kaminari.paginate_array(
      @entries,

      # I changed the code below from 'total_users' to 'total_scores'
      total_count: @lb.total_scores)

    @page_array = pager.page(@page).per(@limit)
  end

  def entry_service
    Boards::GetAllService.new
  end
end
