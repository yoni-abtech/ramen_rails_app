# typed: false
class RamensController < ApplicationController
  def show
    @ramen = Ramen.find(params[:id])
  end
  
  def new
  end

  def create
    @ramen = Ramen.new(ramen_params)
 
    @ramen.save
    binding.pry
    redirect_to @ramen
  end

  private
  def ramen_params
    params.require(:ramen).permit(:brand, :review)
  end
end
