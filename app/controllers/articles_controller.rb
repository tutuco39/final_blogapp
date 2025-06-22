class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = current_user.articles.build
  end

  def create
    @article = current_user.articles.build(article_params)
    @article.user = current_user
    if @article.save
      redirect_to article_path,
                  notice: 'articleを作成しました'
    else
      flash.now[:error] = '作成に失敗しました'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy!
    # redirect_to articles_path, status: :see_other, notice: '削除に成功しました'
  end

end