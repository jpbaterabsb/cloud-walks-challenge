
require_relative '../../../strategy/strategy'
class EndGroupedKillStrategy < Strategy
  def self.should_process?(params)
    line = params[:line]
    line.include?("--------------") && params[:in_lifecycle]
  end

  def self.process(params)
    params[:counter] += 1
    params[:game_key] = "game_#{params[:counter]}".to_sym
    params[:result] << { params[:game_key] => params[:kills_by_means] }
    params[:in_lifecycle] = false
    return params
  end
end
