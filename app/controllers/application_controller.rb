class ApplicationController < ActionController::Base
def blank_square_form
render({ :template => "calculation_templates/square_form.html.erb"})
end

def calculate_square
  # params ={"value"=>"322"}
  @num = params.fetch("value").to_f
  @square_of_num = @num ** 2
  render({ :template => "calculation_templates/square_results.html.erb"}) 
end
 

#Random

def blank_random_form
  render({ :template => "calculation_templates/rand_form.html.erb"})
end

def calculate_random
  # params = {"user_min="322}
  @lower = params.fetch("user_min").to_f
@upper = params.fetch("user_max").to_f
  render({ :template => "calculation_templates/random_results.html.erb" })
end

end
