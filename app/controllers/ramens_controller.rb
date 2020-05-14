# typed: strict
class RamensController < ApplicationController
  extend T::Sig

  sig {void}
  def initialize()
    @ramen = T.let(nil, T.nilable(Ramen))
  end

  sig {returns(Ramen)}
  def show
    @ramen = Ramen.find(params[:id])
  end

  sig {returns(NilClass)}
  def new
  end

  sig {returns(String)}
  def create
    @ramen = Ramen.new(ramen_params)

    @ramen.save
    redirect_to @ramen
  end

  private

  sig {returns(ActionController::Parameters)}
  def ramen_params
    params.require_typed(:ramen, TA[ActionController::Parameters].new).permit(:brand, :review)
  end
end
