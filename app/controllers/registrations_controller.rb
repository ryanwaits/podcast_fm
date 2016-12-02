class RegistrationsController < ApplicationController
  def new
    @podcast = Podcast.new
  end

  def create
    @podcast = Podcast.create(podcast_params)
    if @podcast.save
      session[:user_id] = @podcast.id
      redirect_to root_path
    end
  end

  private

  def podcast_params
    params.require(:podcast).permit(:email, :password_digest)
  end
end
