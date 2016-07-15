class CommentsController < ApplicationController
    def new
        @Tweet= Tweet.find(params[:tweet_id])
        @comment= @Tweet.comments.new
    end

    def create
        @Tweet= Tweet.find(params[:tweet_id])
        comment=@Tweet.comments.new(comment_params)
        comment.save
        redirect_to tweet_path(@Tweet)
    end

    def destroy

      @tweet = Tweet.find(params[:tweet_id])
      @tweet.destroy
      redirect_to tweets_path

    end


    private

    def comment_params
        params.require(:comment).permit(:id,:content,:tweet_id)
    end
end
