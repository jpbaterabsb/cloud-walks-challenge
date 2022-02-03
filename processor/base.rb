class Base
  def initialize(*strategies)
    @strategies =  strategies
    @params = {}
  end

  def call()
    @strategies.each do |s|
      if s.should_process? @params
        @params = s.process @params
      end
    end
    @params
  end

  def put(key, value)
    @params[key.to_sym] = value
  end
end
