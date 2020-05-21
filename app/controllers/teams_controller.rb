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
            @t1 = Team.create(name: params[:t1n], points: 0)
            current_user.teams << @t1

            @t2 = Team.create(name: params[:t2n], points: 0)
            current_user.teams << @t2

            @t3 = Team.create(name: params[:t3n], points: 0)
            current_user.teams << @t3

            @t4 = Team.create(name: params[:t4n], points: 0)
            current_user.teams << @t4

            @t5 = Team.create(name: params[:t5n], points: 0)
            current_user.teams << @t5
  
            @t6 = Team.create(name: params[:t6n], points: 0)
            current_user.teams << @t6

            @t7 = Team.create(name: params[:t7n], points: 0)
            current_user.teams << @t7

            @t8 = Team.create(name: params[:t8n], points: 0)
            current_user.teams << @t8

            @t9 = Team.create(name: params[:t9n], points: 0)
            current_user.teams << @t9

            @t10 = Team.create(name: params[:t10n], points: 0)
            current_user.teams << @t10

        erb :'/teams/show'
    end

    get '/teams/:id' do 
        binding.pry
    end



end