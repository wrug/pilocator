require 'rubygems'
require 'sinatra'
require 'haml'

PI = File.read("data/pi1m.txt")

get '/' do
  @position = PI.index(params[:sequence]) if params[:sequence]
  haml :index
end

