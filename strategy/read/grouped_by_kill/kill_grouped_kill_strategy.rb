require_relative '../../../strategy/strategy'
class KillGroupedKillStrategy < Strategy
  def self.should_process?(params)
    line = params[:line]
    @regex = line.scan(/.* Kill: .*: (.*) killed (.*) by (.*)/)[0]
    @regex
  end

  def self.process(params)
    if params[:kills_by_means][@regex[2].to_sym]
      params[:kills_by_means][@regex[2].to_sym]+=1
    else
      params[:kills_by_means][@regex[2].to_sym]=1
    end
    return params
  end
end
