class ApplicationController < Sinatra::Base
    set :views, proc { File.join(root, '../views/') }
    register Sinatra::Twitter::Bootstrap::Assets
    
    configure do 
        set :public_folder, 'public'
        set :views, 'app/views'
        enable :sessions
        # I am unclear if I need session secret or if I'm even coding it correctly 
        set :session_secret, "984hf4hfiuhrwf84huiwrhf448hf3u4hf"
    end

    get '/' do
      erb :"application/index"
    end

    get '/start' do 
        erb :"/application/trivia_sheet"
    end

    post '/after_trivia_sheet' do 
        @team1score = (
            (params[:t1r1q1].to_i) + (params[:t1r1q2].to_i) + (params[:t1r1q3].to_i) + (params[:t1r1q4].to_i) + (params[:t1r2q1].to_i) + (params[:t1r2q2].to_i) + (params[:t1r2q3].to_i) + (params[:t1r2q4].to_i) + (params[:t1r3q1].to_i) + (params[:t1r3q2].to_i) + (params[:t1r3q3].to_i) + (params[:t1r3q4].to_i) + (params[:t1r4q1].to_i) + (params[:t1r4q2].to_i) + (params[:t1r4q3].to_i) + (params[:t1r4q4].to_i)
            )

        @team2score = (
            (params[:t2r1q1].to_i) + (params[:t2r1q2].to_i) + (params[:t2r1q3].to_i) + (params[:t2r1q4].to_i) + (params[:t2r2q1].to_i) + (params[:t2r2q2].to_i) + (params[:t2r2q3].to_i) + (params[:t2r2q4].to_i) + (params[:t2r3q1].to_i) + (params[:t2r3q2].to_i) + (params[:t2r3q3].to_i) + (params[:t2r3q4].to_i) + (params[:t2r4q1].to_i) + (params[:t2r4q2].to_i) + (params[:t2r4q3].to_i) + (params[:t2r4q4].to_i)
            )

        @team3score = (
            (params[:t3r1q1].to_i) + (params[:t3r1q2].to_i) + (params[:t3r1q3].to_i) + (params[:t3r1q4].to_i) + (params[:t3r2q1].to_i) + (params[:t3r2q2].to_i) + (params[:t3r2q3].to_i) + (params[:t3r2q4].to_i) + (params[:t3r3q1].to_i) + (params[:t3r3q2].to_i) + (params[:t3r3q3].to_i) + (params[:t3r3q4].to_i) + (params[:t3r4q1].to_i) + (params[:t3r4q2].to_i) + (params[:t3r4q3].to_i) + (params[:t3r4q4].to_i)
            )

        @team4score = (
            (params[:t4r1q1].to_i) + (params[:t4r1q2].to_i) + (params[:t4r1q3].to_i) + (params[:t4r1q4].to_i) + (params[:t4r2q1].to_i) + (params[:t4r2q2].to_i) + (params[:t4r2q3].to_i) + (params[:t4r2q4].to_i) + (params[:t4r3q1].to_i) + (params[:t4r3q2].to_i) + (params[:t4r3q3].to_i) + (params[:t4r3q4].to_i) + (params[:t4r4q1].to_i) + (params[:t4r4q2].to_i) + (params[:t4r4q3].to_i) + (params[:t4r4q4].to_i)
            )

        @team5score = (
            (params[:t5r1q1].to_i) + (params[:t5r1q2].to_i) + (params[:t5r1q3].to_i) + (params[:t5r1q4].to_i) + (params[:t5r2q1].to_i) + (params[:t5r2q2].to_i) + (params[:t5r2q3].to_i) + (params[:t5r2q4].to_i) + (params[:t5r3q1].to_i) + (params[:t5r3q2].to_i) + (params[:t5r3q3].to_i) + (params[:t5r3q4].to_i) + (params[:t5r4q1].to_i) + (params[:t5r4q2].to_i) + (params[:t5r4q3].to_i) + (params[:t5r4q4].to_i)
            )

        @team6score = (
            (params[:t6r1q1].to_i) + (params[:t6r1q2].to_i) + (params[:t6r1q3].to_i) + (params[:t6r1q4].to_i) + (params[:t6r2q1].to_i) + (params[:t6r2q2].to_i) + (params[:t6r2q3].to_i) + (params[:t6r2q4].to_i) + (params[:t6r3q1].to_i) + (params[:t6r3q2].to_i) + (params[:t6r3q3].to_i) + (params[:t6r3q4].to_i) + (params[:t6r4q1].to_i) + (params[:t6r4q2].to_i) + (params[:t6r4q3].to_i) + (params[:t6r4q4].to_i)
            )

        @team7score = (
            (params[:t7r1q1].to_i) + (params[:t7r1q2].to_i) + (params[:t7r1q3].to_i) + (params[:t7r1q4].to_i) + (params[:t7r2q1].to_i) + (params[:t7r2q2].to_i) + (params[:t7r2q3].to_i) + (params[:t7r2q4].to_i) + (params[:t7r3q1].to_i) + (params[:t7r3q2].to_i) + (params[:t7r3q3].to_i) + (params[:t7r3q4].to_i) + (params[:t7r4q1].to_i) + (params[:t7r4q2].to_i) + (params[:t7r4q3].to_i) + (params[:t7r4q4].to_i)
            )

        @team8score = (
            (params[:t8r1q1].to_i) + (params[:t8r1q2].to_i) + (params[:t8r1q3].to_i) + (params[:t8r1q4].to_i) + (params[:t8r2q1].to_i) + (params[:t8r2q2].to_i) + (params[:t8r2q3].to_i) + (params[:t8r2q4].to_i) + (params[:t8r3q1].to_i) + (params[:t8r3q2].to_i) + (params[:t8r3q3].to_i) + (params[:t8r3q4].to_i) + (params[:t8r4q1].to_i) + (params[:t8r4q2].to_i) + (params[:t8r4q3].to_i) + (params[:t8r4q4].to_i)
            )

        @team9score = (
            (params[:t9r1q1].to_i) + (params[:t9r1q2].to_i) + (params[:t9r1q3].to_i) + (params[:t9r1q4].to_i) + (params[:t9r2q1].to_i) + (params[:t9r2q2].to_i) + (params[:t9r2q3].to_i) + (params[:t9r2q4].to_i) + (params[:t9r3q1].to_i) + (params[:t9r3q2].to_i) + (params[:t9r3q3].to_i) + (params[:t9r3q4].to_i) + (params[:t9r4q1].to_i) + (params[:t9r4q2].to_i) + (params[:t9r4q3].to_i) + (params[:t9r4q4].to_i)
            )

        @team10score = (
            (params[:t10r1q1].to_i) + (params[:t10r1q2].to_i) + (params[:t10r1q3].to_i) + (params[:t10r1q4].to_i) + (params[:t10r2q1].to_i) + (params[:t10r2q2].to_i) + (params[:t10r2q3].to_i) + (params[:t10r2q4].to_i) + (params[:t10r3q1].to_i) + (params[:t10r3q2].to_i) + (params[:t10r3q3].to_i) + (params[:t10r3q4].to_i) + (params[:t10r4q1].to_i) + (params[:t10r4q2].to_i) + (params[:t10r4q3].to_i) + (params[:t10r4q4].to_i)
            )

        current_user.teams[0].points = @team1score

        current_user.teams[1].points = @team2score

        current_user.teams[2].points = @team3score

        current_user.teams[3].points = @team4score

        current_user.teams[4].points = @team5score

        current_user.teams[5].points = @team6score

        current_user.teams[6].points = @team7score

        current_user.teams[7].points = @team8score

        current_user.teams[8].points = @team9score

        current_user.teams[9].points = @team10score

        binding.pry
        erb :"/application/winner"
    end 

    helpers do 
        def logged_in?
            #returns boolean value of session[:user_id]
            !!session[:user_id]
        end

        def current_user
            #finds by integer id in session[:user_id]
            User.find(session[:user_id])
            #returns user object 
        end
    end
end
  