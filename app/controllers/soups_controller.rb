class SoupsController < ApplicationController
  before_action :fetch_soups, only: [:show, :edit, :update, :destroy, :toggle_featured]
	def index
		@soups = Soup.all

    respond_to do |format|
      format.html
      format.json {render json: @soups}
    end
  end

  def show
    respond_to do |format|
      format.json {render json: @soup}
      format.html
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  def toggle_featured
    @soup.toggle!(:featured)
    redirect_to @soup, notice: 'Successfully changed featured soup'
  end

  def secret_soups
    session[:vip] = true
    redirect_to root_path
  end
  private
  def fetch_soups
    @soup = Soup.find(params[:id])
  end
end

