Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/actors", {:controller => "actor", :action => "show"})
  get("/directors", {:controller => "director", :action => "show"})
  get("actors/:ac_id", {:controller => "actor", :action => "details"})
  
  get("/directors/youngest", {:controller => "director", :action => "youngest"})
  get("/directors/eldest", {:controller => "director", :action => "eldest"})
  get("/directors/:dir_id", {:controller => "director", :action => "show_details"})

  get("/movies", {:controller => "movie", :action => "show"})
  get("/movies/:movie_id", {:controller => "movie", :action => "details"})
  
end
