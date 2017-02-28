class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def edit
		@article = Article.find(params[:id])
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			flash[:notice] = "Post was successfully created"
			redirect_to article_path(@article)
		else
			render 'new'
		end
	end

	def show
		@article = Article.find(params[:id])
	end


	private
		def article_params
			#permit article to change title and description
			params.require(:article).permit(:title, :description)
		end

end