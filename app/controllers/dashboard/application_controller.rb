module Dashboard

	class ApplicationController < ::ApplicationController

		def index
			@admin = Admin.find(params[:id])
			@project = Project.find(params[:id])
			@article = Article.find(params[:id])
		  end

	end

end