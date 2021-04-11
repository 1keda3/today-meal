class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all.order('created_at DESC')
  end

  def create
    @tweet = Tweet.create(tweet_params)
    if @tweet.save
      redirect_to root_path
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    if tweet.update(update_params)
      redirect_to root_path
    else
      render :edit
    end
  end


  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to root_path
  end
  
  private

  def tweet_params
    params.permit(:title, :eat_time, :time_taken, :recipe, :supplement, :image).merge(user_id: current_user.id)
  end

  def update_params
    params.require(:tweet).permit(:title, :eat_time, :time_taken, :recipe, :supplement, :image).merge(user_id: current_user.id)
  end

end
