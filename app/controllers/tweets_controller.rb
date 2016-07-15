class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end
  def new
        @tweet = Tweet.new
  end
  def create
        @tweet= Tweet.new(tweet_params)
        @tweet.save
        redirect_to tweets_path
  end

  def edit

    @tweet = Tweet.find(params[:id])

  end

  def update

    @tweet = Tweet.find(params[:id])
    @tweet.update(tweet_params)
    redirect_to tweets_path

  end

  def destroy

    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to tweets_path

  end
  def show

    @tweet = Tweet.find(params[:id])
    @num = @tweet.user_id
    @user = User.find(@num)
    @comments = @tweet.comments.all

  end
  private
  def tweet_params
        params.require(:tweet).permit(:message, :tittle, :user_id)
  end


end
