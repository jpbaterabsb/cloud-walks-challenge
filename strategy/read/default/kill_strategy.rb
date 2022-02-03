require_relative '../../../strategy/strategy'
class KillStrategy < Strategy
  def self.should_process?(params)
    line = params[:line]
    @regex = line.scan(/.* Kill: .*: (.*) killed (.*) by (.*)/)[0]
    @regex
  end

  def self.process(params)
    datum = params[:datum]
    datum[:total_kills] = datum[:total_kills] + 1
    datum[:players] |= [@regex[0]]
    datum[:players] |= [@regex[1]]
    if datum[:kills][@regex[0]]
      datum[:kills][@regex[0]] = datum[:kills][@regex[0]] + 1
    else
      datum[:kills][@regex[0]] = 1
    end
    return params
  end
end
