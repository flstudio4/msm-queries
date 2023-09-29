class DirectorController < ApplicationController
  def show
    @result = Director.all
    render(:template => "director_templates/show")
  end

  def show_details
    fetched_id = params.fetch("dir_id")
    @director_details = Director.where(:id => fetched_id)
    @movie_list = Movie.where(:director_id => fetched_id)
    render(:template => "director_templates/details")
  end

  def youngest
    @y_director = Director.order(:dob => :desc).at(0)
    render(:template => "director_templates/youngest")
  end

  def eldest
    @e_director = Director.order(:dob).where.not({ :dob => nil }).first
    render({:template => "director_templates/eldest_director"})
  end
end
