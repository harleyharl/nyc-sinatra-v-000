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
    @landmark.figure # @landmark.figure = [:landmark][:figure]
    erb :'/landmarks/edit'
  end

  get '/landmarks/:id' do
    # binding.pry
    @landmark = Landmark.find_by(id: params[:id])
    @landmark.figure # @landmark.figure = [:landmark][:figure]
    erb :'/landmarks/:id/show'
  end

  post '/landmarks' do
    # binding.pry
    @figures = Figure.all
    @landmark = Landmark.create(params[:landmark])
    erb :'/landmarks/:id'
  end


end
