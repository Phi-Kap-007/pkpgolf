module Boards
  DEFAULT_BOARD = 'ccleaders'

  def self.default_leaderboard
    Leaderboard.new(
      DEFAULT_BOARD,
      default_options,
      redis_connection: Redis.current
    )
  end

  def self.default_options
    Leaderboard::DEFAULT_OPTIONS.merge(
      page_size: 10,
      reverse: true
    )

  end

  class Base
    def leaderboard
      @leaderboard ||= Boards.default_leaderboard
    end
  end
end
