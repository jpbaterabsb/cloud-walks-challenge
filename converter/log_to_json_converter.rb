require_relative '../processor/processor'
class LogToJsonConverter
  def initialize(source, target, name)
    @source =   source
    @target =  target
    @processor = Processor.get[name.to_sym]
  end

  def convert
    File.readlines(@source).each do |line|
    @processor.put('line', line)
    @params = @processor.call
    end
    File.open(@target, 'w') { |file| file.write(JSON.pretty_generate(@params[:result])) }
  end
end
