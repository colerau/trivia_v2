class TeamsController < ApplicationController
    get '/teams' do 
        @teams = Team.all
        binding.pry
    end

    get '/teams/new' do 
        erb :'/teams/new'
    end

    post '/teams' do 
        binding.pry
        # t1 stands for team one
        @t1 = Team.create(name: params[:t1n])
        @t2 = Team.create(name: params[:t2n])
        @t3 = Team.create(name: params[:t3n])
        @t4 = Team.create(name: params[:t4n])
        @t5 = Team.create(name: params[:t5n])
        @t6 = Team.create(name: params[:t6n])
        @t7 = Team.create(name: params[:t7n])
        @t8 = Team.create(name: params[:t8n])
        @t9 = Team.create(name: params[:t9n])
        @t10 = Team.create(name: params[:t10n])
        erb :'/teams/show'
    end

    get '/teams/:id' do 
        binding.pry
    end



end