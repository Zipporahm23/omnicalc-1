Rails.application.routes.draw do
  # Calculate Square root
get("/square/new", { :controller => "application", :action => "blank_square_form" })

get("/square/results", { :controller => "application", :action => "calculate_square" })

# random with form
get("/random/results", { :controller => "application", :action => "calculate_random" })

get("/random/new", { :controller => "application", :action => "blank_random_form" })
end
