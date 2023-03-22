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
  @result = rand(@lower..@upper)
  render({:template=>"calculation_templates/rand_results.html.erb"})

end
def calculate_square_root
  render({:template => "calculation_templates/square_root_form.html.erb"})
end
def square_root_results
   @num = params.fetch("user_number").to_f
   @squareroot = Math.sqrt(@num)
  render({:template => "calculation_templates/square_root_results.html.erb"})
end
def new_payment
  render({:template=>"calculation_templates/new_payment.html.erb"})
end
def payment_results
  @apr = params.fetch("user_apr")
  # @finalapr = @apr."%.4f"
  @years = params.fetch("user_years")
  @payment = params.fetch("user_pv")
  
  render({:template=>"calculation_templates/payment_results.html.erb"})
end
def random_number
  render({:template=> "calculation_templates/random_new.html.erb"})
end
def random_results
  @usermin = param.fetch("user_min").to_f
  @usermax = param.fetch("user_max").to_f
  @randomresult = rand(@usermin..@usermax)
  render({:template=>"calculation_templates/random_results.html.erb"})
end
end
