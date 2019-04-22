require 'pry'
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/articles/new' do
  erb :new
  end
  
  post "/articles" do 
    @articles = Article.new
    
    erb :index
  end

end
