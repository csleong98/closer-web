class ProjectsController < ApplicationController
	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			redirect_to projects_path
		else
			render 'new'
		end
	end

	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
	end

	private
	def project_params 
		params.require(:project).permit(:title, :description, :category, :file, :timeframe)
	end

end