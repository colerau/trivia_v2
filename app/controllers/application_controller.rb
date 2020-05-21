class ApplicationController < Sinatra::Base
    set :views, proc { File.join(root, '../views/') }
    register Sinatra::Twitter::Bootstrap::Assets
  
    get '/' do
      erb :"application/index"
    end

    get '/start' do 
        erb :"/application/trivia_sheet"
    end
end
  