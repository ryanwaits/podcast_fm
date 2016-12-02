class RegistrationController < ApplicationController
  def new
    @podcast = Podcast.new
  end

  def create
    @podcast = Podcast.create(podcast_params)
    if @podcast.save
      session[:user_id] = @podcast.id
    end
  end

  private

  def podcast_params
    params.require(:podcast).permit(:title, :description, :email, :password, :itunes)
  end
end
