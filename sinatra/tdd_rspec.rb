require 'sinatra'
require 'sinatra/contrib'
require 'json'
require 'mhem'

# require 'pry'


get '/' do
  {hello: 'world'}.to_json
end

get '/encode' do
  message = params[:message]
  if message
    { message: Mhem.encode(message) }.to_json
  else
    status 400
    { error: "please pass in a message to encode" }.to_json
  end
end

get '/decode' do
  message = params[:message]
  if message
    { message: Mhem.decode(message) }.to_json
  else
    status 400
    { error: "please pass in a message to decode" }.to_json
  end
end

helpers do
  def h(text)
    Rack::Utils.escape_html(text)
  end
end
