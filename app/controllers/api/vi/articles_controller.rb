class Api::Vi::ArticlesController < ApplicationController
  def index
    articles = Article.all
    render json: articles, status: 200
  end

  def show
    article = Article.find_by(id: params[:id])
    if article
      render json: article, status: 200
    else
      render json: {
        error: "Article not found .."
      }
    end
  end

  def create
    article = Article.new(
      title: arti_params[:title], 
      body: arti_params[:body],
      auther: arti_params[:auther]
      )
      if article.save
        render json: article, status: 200
      else
        render json: {
          error: "error creating.."
        }
      end
  end

  def update
    article = Article.find_by(id: params[:id])
    if article
     article.update(title: params[:title], body: params[:body], auther: params[:auther])
     render json: "Article Updated"
    else
      render json: {
        error: "Article not found"
      }
    end
  end

  def destroy
    article = Article.find_by(id: params[:id])
    if article
     article.destroy
     render json: "Article deteted"
    end
  end

  private
  def arti_params
   params.permit([:title,:body,:auther])
  end

end
