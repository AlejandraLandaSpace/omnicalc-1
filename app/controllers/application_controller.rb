class ApplicationController < ActionController::Base
def blank_square_form
  render({:template=>"calculation_templates/square_form.html.erb"})
end
def calculate_square
  @nums = params.fetch("elephant").to_f
  @square_of_nums = @nums ** 2
  render({:template=>"calculation_templates/square_results.html.erb"})
end
end
