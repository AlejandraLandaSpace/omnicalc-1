class ApplicationController < ActionController::Base
def blank_square_form
  render({:template=>"calculation_templates/square_form.html.erb"})
end
def calculate_square
  @nums = params.fetch("elephant").to_f
  @square_of_nums = @nums ** 2
  render({:template=>"calculation_templates/square_results.html.erb"})
end
def calculate_random
  @lower = params.fetch("user_min").to_f
  @upper = params.fetch("user_max").to_f
  render({:template=>"calculation_templates/rand_results.html.erb"})

end
def calculate_square_root
  render({:template => "calculation_templates/square_root_form.html.erb"})
end
def square_root_results
  
  render({:template => "calculation_templates/square_root_results.html.erb"})
end
end
