
require_relative '../../../strategy/strategy'
class BeginStrategy < Strategy
  def self.should_process?(params)
    line = params[:line]
    line.include? "InitGame"
  end

  def self.process(params = {})
    params[:in_lifecycle] = true
    params[:counter] ||= 0
    params[:result] ||= []
    params[:game_key] ||= ''
    params[:datum] = {
      total_kills: 0,
      players: [],
      kills: {}
    }
    return params
  end
end
