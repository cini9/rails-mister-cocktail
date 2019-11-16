class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.search_by(params[:query]).sort_by{ |cocktail| cocktail.id }
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render "new"
    end
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.delete
    redirect_to root_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :query, :photo)
  end
end
