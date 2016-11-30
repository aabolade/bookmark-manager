ENV["RACK_ENV"] ||= "development"
require 'sinatra/base'
require_relative './models/link.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello BookmarkManager!'
  end

  get '/links' do
    @links = Link.entries
    erb :links
  end

  post '/links' do
    link = Link.create(url: params[:url],title: params[:title])
    redirect to '/links'
  end

  get '/links/new' do
    erb :new
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
