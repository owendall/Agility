class ProjectsController < ApplicationController

  hobo_model_controller

  auto_actions :all

  def show
    @project = find_instance
    @requirements = @project.requirements.apply_scopes(
                      :search => [params[:search], :title, :status],
                      :order_by => parse_sort_param(:title, :status))
  end

end
