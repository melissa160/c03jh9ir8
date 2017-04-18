class ActorsController < ApplicationController

  def index
    @actors = Actor.all 
  end

  def new
    @actors = Actor.new
  end

  def create
    
  end
end
