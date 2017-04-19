class ActorsController < ApplicationController

  def index
    @actors = Actor.all 
  end

  def new
    @actors = Actor.new
  end

  def create
    actor = Actor.new(actors_params)
    if actor.save
      redirect_to actors_path
    else
      render 'new'
    end
  end

  private
    def actors_params
      params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url, :alive, :death_date, :death_place)
    end
end

      # t.string :name, limit: 100
      # t.text :bio
      # t.date :birth_date
      # t.string :birth_place, limit: 100
      # t.string :image_url
      # t.boolean :alive
      # t.date :death_date
      # t.string :death_place, limit: 100 