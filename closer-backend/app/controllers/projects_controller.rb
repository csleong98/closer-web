class ProjectsController < ApplicationController
	def new
		@project = Project.new
	end

	def create 
		@project = Project.new(proje)
	end

	private
	def project_params 
		params.require(:project).permit(:title, :description, :file, :category, :timeframe)
	end

end