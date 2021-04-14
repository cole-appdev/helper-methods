Rails.application.routes.draw do
  #get "/", controller: "movies", action: "index"
  #get "/" => "movies#index" #super shorthand for the above
  root "movies#index" # even shorter shorthand for index page
  
  # Routes for the Movie resource:

  # CREATE
  post "/movies" => "movies#create", as: :movies #movies_url and movies_path
  get "/movies/new" => "movies#new", as: :new_movie # new_movie_url and new_movie_path
          
  # READ
  get "/movies" => "movies#index" #named above on line 9
  get "/movies/:id" => "movies#show", as: :movie #movie_path() and movie_url()
  
  # UPDATE
  patch "/movies/:id" => "movies#update" #named above
  get "/movies/:id/edit" => "movies#edit", as: :edit_movie #will expect an argument
  
  # DELETE
  delete "/movies/:id" => "movies#destroy"

  #------------------------------
end
