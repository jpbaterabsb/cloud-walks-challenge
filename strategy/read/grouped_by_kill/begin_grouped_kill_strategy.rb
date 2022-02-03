
require_relative '../../../strategy/strategy'
class BeginGroupedKillStrategy < Strategy
  def self.should_process?(params)
    line = params[:line]
    line.include? "InitGame"
  end

  def self.process(params = {})
    params[:counter] ||= 0
    params[:result] ||= []
    params[:game_key] ||= ''
    params[:kills_by_means] = {}
    params[:in_lifecycle] = true
    return params
  end
end
