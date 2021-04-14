Rails.application.routes.draw do
  #get "/", controller: "movies", action: "index"
  #get "/" => "movies#index" #super shorthand for the above
  root "movies#index" # even shorter shorthand for index page
  
  # Routes for the Movie resource:

  # CREATE
  post "/movies" => "movies#create"
  get "/movies/new" => "movies#new"
          
  # READ
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  
  # UPDATE
  patch "/movies/:id" => "movies#update"
  get "/movies/:id/edit" => "movies#edit"
  
  # DELETE
  delete "/movies/:id" => "movies#destroy"

  #------------------------------
end
