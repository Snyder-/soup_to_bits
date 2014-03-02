class CategoriesController < ApplicationController
  before_action :fetch_category, only: [:show, :update, :edit, :destroy]

	def index
    @categories = Category.all
    respond_to do |format|
      format.html
      format.json { render json: @categories }
    end
  end
  def show
    respond_to do |format|
      format.html
      format.json {render json: @category}
    end
  end
  def create

  end
  def destroy

  end

  private
  def fetch_category
    @category = Category.find(params[:id])
  end

end
