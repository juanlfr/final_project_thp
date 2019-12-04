module Admin

	class ArticlesController < ApplicationController

		def index
	    @project = Project.all
	  end

	  def new
	    @project = Project.new
	  end

	  def create
	   @project = Project.create(project_params)
	  end

	  def show
	    @project = Project.find(params[:id])
	  end

	  def edit
	  end

	  def update
	    @project = Project.find(params[:id])
	    @project.update(project_params)
	  end

	  def destroy
	    @project = Project.find(params[:id])
	  end

	  private

	  def project_params
	    params.require(:project).permit(:title, :description, :content, :date, :published)
	  end

	end

end

