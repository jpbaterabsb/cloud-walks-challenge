require_relative '../strategy/read/default/end_strategy'
require_relative '../strategy/read/default/begin_strategy'
require_relative '../strategy/read/default/kill_strategy'
require_relative '../strategy/read/grouped_by_kill/kill_grouped_kill_strategy'
require_relative '../strategy/read/grouped_by_kill/begin_grouped_kill_strategy'
require_relative '../strategy/read/grouped_by_kill/end_grouped_kill_strategy'
require_relative 'base'

class Processor

  def self.get
    {
      DEFAULT: Base.new(BeginStrategy, KillStrategy, EndStrategy),
      GROUP_BY_KILL: Base.new(BeginGroupedKillStrategy, KillGroupedKillStrategy, EndGroupedKillStrategy)
    }
  end
end
