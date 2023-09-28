class MovieController < ApplicationController
  def details
    fetched_id = params.fetch("movie_id")
    @movie_list = Movie.all.where(:id => fetched_id)
    movie_name_director_id = Movie.where(:id => fetched_id).at(0).director_id
    @director_name = Director.where(:id => movie_name_director_id).at(0).name
    render(:template => "movie_templates/details")
  end

  def show
    @all_movies = Movie.all
    render(:template => "movie_templates/show")
  end

end
