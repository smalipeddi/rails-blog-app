class ArticlesController < ActionController::Base
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def new 
    end

    def create
        @article = Article.new(params.require(:article).permit(:title, :description))
        @article.save
        redirect_to @article
    end
end
