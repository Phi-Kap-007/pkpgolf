module Boards
  class DeleteService < Boards::Base
    def execute(options = {})
      return unless user_exists?(options[:name])
      leaderboard.remove_user(options[:name])
    end

    private

    def user_exists?(name)
      leaderboard.check_user?(name)
    end
  end
end
