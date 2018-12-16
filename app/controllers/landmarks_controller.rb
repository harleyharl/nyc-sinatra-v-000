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

  end

  post '/landmarks' do
    binding.pry
    @figures = Figure.all
    @landmark = Landmark.create(params[:landmark])
    erb :'/landmarks/new'
  end


end
