require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base


get '/' do
    erb :index
  end

  get '/index' do
    erb :index
  end

  post '/search_terms' do
    user_search=params[:search] 
    @book=get_book(user_search) 
    erb :generic
  end
 post '/elements' do
   @book_t = params[:Book_title]
   @book_info = params[:info]
   erb :elements
   
   
 end
 




end