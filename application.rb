require 'json'

require_relative './converter/log_to_json_converter'

def build_path param
  File.join(File.dirname(__FILE__), param)
end

LogToJsonConverter.new(
  build_path(ARGV[0]),
  build_path(ARGV[1]),
  ARGV[2]
).convert


