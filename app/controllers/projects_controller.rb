class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def create

    if params[:state] == 'propuesta'
      state = 0
    elsif params[:state] == 'en_progreso'
      state = 1
    else
      state = 2
    end

    
    @project = Project.create(
      name: params[:name],
      description: params[:description],
      date_begin: params[:date_begin],
      date_end: params[:date_end],
      state: state
    )
    
  end
end
