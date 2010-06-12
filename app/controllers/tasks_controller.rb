class TasksController < ApplicationController

  hobo_model_controller

  auto_actions :write_only, :edit

  auto_actions_for :requirement, :create

end
