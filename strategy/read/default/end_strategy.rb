require_relative '../../../strategy/strategy'
class EndStrategy < Strategy
  def self.should_process?(params)
    line = params[:line]
    line.include?("--------------") && params[:in_lifecycle]
  end

  def self.process(params)
    params[:counter] += 1
    params[:game_key] = "game_#{params[:counter]}".to_sym
    params[:result] << { params[:game_key] => params[:datum] }
    params[:in_lifecycle] = false
    return params
  end
end
