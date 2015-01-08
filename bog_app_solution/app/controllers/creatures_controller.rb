class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
    render :index
  end

  def new
    render :new
  end

  def create
    # raise params.inspect
    creatureParams = params.require(:creature).permit(:name, :description)
    Creature.create(creatureParams)
    redirect_to "/creatures"
  end

end
