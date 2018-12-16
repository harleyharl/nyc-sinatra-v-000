class LandmarksController < ApplicationController
  # add controller methods
  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'/landmarks/index'
  end

  get '/landmarks/new' do
    # @landmark
    erb :'/landmarks/new'
  end

  get '/landmarks/:id/edit' do
    # binding.pry
    @landmark = Landmark.find_by(id: params[:id])
    # @landmark.figure # @landmark.figure = [:landmark][:figure]

    erb :'/landmarks/edit'
  end

  post '/landmarks' do
    # binding.pry
    @landmark = Landmark.create(id: params[:id])

    if params[:landmark][:name] && !params[:landmark][:name].empty?
      @landmark.name = params[:landmark][:name]
    end

    if params[:landmark][:year_completed] && !params[:landmark][:year_completed].empty?
      @landmark.name = params[:landmark][:name]
    end

    @landmark.save

    erb :'/landmarks/show'
  end

  get '/landmarks/:id' do
    # binding.pry
    @landmark = Landmark.find_by(id: params[:id])
    # @landmark.figure # @landmark.figure = [:landmark][:figure]
    erb :'/landmarks/show'
  end

  post '/landmarks/:id' do
    # binding.pry
    @landmark = Landmark.find_by(id: params[:id])

    if params[:landmark][:name] && !params[:landmark][:name].empty?
      @landmark.name = params[:landmark][:name]
    end

    if params[:landmark][:year_completed] && !params[:landmark][:year_completed].empty?
      @landmark.name = params[:landmark][:name]
    end

    @landmark.save
    # binding.pry
    # redirect '/landmarks/'

  end


end
