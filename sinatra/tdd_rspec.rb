require 'sinatra'
require 'sinatra/contrib'
require 'json'
# require 'pry'

get '/' do
  {hello: 'world'}.to_json
end


helpers do
  def h(text)
    Rack::Utils.escape_html(text)
  end
end
