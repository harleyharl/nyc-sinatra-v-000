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

  get '/landmarks/:id' do
    @landmark = params[:landmark][:figure]
    # @landmark.figure = [:landmark][:figure]
  end

  post '/landmarks' do
    binding.pry
    @figures = Figure.all
    @landmark = Landmark.create(params[:landmark])
    erb :'/landmarks/:id'
  end


end
