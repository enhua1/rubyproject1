class ArticlesController < ApplicationController

  def index
    @articles = Article.all #plural
  end


  def new
    @article = Article.new
  end

  def create #create action is an end itself not a template
    #render plain: params[:article].inspect

    @article = Article.new(article_params)
    # @article.save
    # redirect_to article_path(@article)

    if @article.save
      #do something
      flash[:notice] = "Article was successfully created"
      redirect_to article_path(@article)
    else
      render 'new'

    end

  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:notice] = "Article was successfully updated"
      redirect_to article_path
    else
      render 'edit'
    end
  end


  def edit
    @article = Article.find(params[:id])
  end
    

  def show
  
    @article = Article.find(params[:id])
    
  end


  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:notice] = "Article was successfully deleted"
    redirect_to articles_path
  end


  private
    
  def article_params
    params.require(:article).permit(:title, :description)
  end
end
