require 'sinatra'
require 'sinatra/reloader'
require 'base64'
require 'initial_avatar'


get '/' do
  'hello'
end

get '/hello/*' do |name|
  svg = InitialAvatar.avatar_data_uri(name, size: 50, font_size: 20)
  svg2 = InitialAvatar.avatar_data_uri(name[0], size: 50, font_size: 20)
  """
  <h1>hello #{name}</h1>
  <img src='#{svg}'/>
  <img src='#{svg2}'/>
  """
end
