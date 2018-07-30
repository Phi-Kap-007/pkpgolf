module Boards
  class UpdateService < Boards::Base
    def execute(entry_params)
      name = entry_params[:name]
      score = entry_params[:score].to_i
      leaderboard.rank_user(name, score)
      user = leaderboard.score_and_rank_for(name)
      user[:page] = leaderboard.page_for(name, leaderboard.page_size)
      user
    end
  end
end
