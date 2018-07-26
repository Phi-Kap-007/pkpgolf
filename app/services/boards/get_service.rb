module Boards
  class GetService < Boards::Base
    def execute(options = {})
      return unless user_exists?(options[:name])
      leaderboard.score_and_rank_for(options[:name])
    end

    private

    def user_exists?(name)
      leaderboard.check_user?(name)
    end
  end
end
