class TeamsController < ApplicationController
    get '/teams' do 
        @teams = Team.all
        binding.pry
    end

    get '/teams/new' do 
        erb :'/teams/new'
    end

    post '/teams' do 
        # t1 stands for team one
        if !(Team.find_by(name: params[:t1n]))
            @t1 = Team.create(name: params[:t1n], points: 0)
            current_user.teams << @t1
        else 
            redirect '/teams/new'
        end 

        if !(Team.find_by(name: params[:t2n]))
            @t2 = Team.create(name: params[:t2n], points: 0)
            current_user.teams << @t2
        else 
            redirect '/teams/new'
        end 

        if !(Team.find_by(name: params[:t3n]))
            @t3 = Team.create(name: params[:t3n], points: 0)
            current_user.teams << @t3
        else 
            redirect '/teams/new'
        end 

        if !(Team.find_by(name: params[:t4n]))
            @t4 = Team.create(name: params[:t4n], points: 0)
            current_user.teams << @t4
        else 
            redirect '/teams/new'
        end 

        if !(Team.find_by(name: params[:t5n]))
            @t5 = Team.create(name: params[:t5n], points: 0)
            current_user.teams << @t5
        else 
            redirect '/teams/new'
        end 

        if !(Team.find_by(name: params[:t6n]))
            @t6 = Team.create(name: params[:t6n], points: 0)
            current_user.teams << @t6
        else 
            redirect '/teams/new'
        end 

        if !(Team.find_by(name: params[:t7n]))
            @t7 = Team.create(name: params[:t7n], points: 0)
            current_user.teams << @t7
        else 
            redirect '/teams/new'
        end 

        if !(Team.find_by(name: params[:t8n]))
            @t8 = Team.create(name: params[:t8n], points: 0)
            current_user.teams << @t8
        else 
            redirect '/teams/new'
        end 

        if !(Team.find_by(name: params[:t9n]))
            @t9 = Team.create(name: params[:t9n], points: 0)
            current_user.teams << @t9
        else 
            redirect '/teams/new'
        end 

        if !(Team.find_by(name: params[:t10n]))
            @t10 = Team.create(name: params[:t10n], points: 0)
            current_user.teams << @t10
        else 
            redirect '/teams/new'
        end 

        erb :'/teams/show'
    end

    get '/teams/:id' do 
        binding.pry
    end



end