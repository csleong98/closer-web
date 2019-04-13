class ProjectsController < ApplicationController
	def new
		@project = Project.new
	end

	def create 
		@project = Project.new(project_params)
		if @project.save
			redirect_to project_path
		else
			render 'new'
		end
	end

	def show 
		@project = Project.find(params[:id])
	end

	private
	def project_params 
		params.require(:project).permit(:title, :description, :file, :category, :timeframe)
	end

end