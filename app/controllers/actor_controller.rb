class ActorController < ApplicationController

  def show
    @actors = Actor.all
    render(:template => "actor_templates/show_actors")
  end

  def details
    @actor_id = params.fetch("ac_id")
    @actor = Actor.where(:id => @actor_id).at(0)
    @movies = Movie.where(:director_id => @actor_id)
    @character = Character.where(:actor_id => @actor_id)
    render(:template => "actor_templates/actor_details")
  end
end
