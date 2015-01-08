class CreaturesController < ApplicationController
    def index
        # render text: "Hello, pilots."
        @creatures = Creature.all
        render :index
    end

    def new
        render :new
    end

    def create
        redirect_to "/creatures"
    end

    def create
        creature = params.require(:creature).permit(:name, :description)
        creature = Creature.create(creature)
        redirect_to "/creatures/#{creature.id}"
    end

    def show
        creature_id = params[:id]
        @creature = Creature.find(creature_id)
        render :show
    end

    def edit
        creature_id = params[:id]
        @creature = Creature.find(creature_id)
        render :edit
    end

    def update
        creature_id = params[:id]
        creature = Creature.find(creature_id)

        # get updated data
        updated_attributes = params.require(:creature).permit(:name, :description)
        # update the creature
        creature.update_attributes(updated_attributes)

        #redirect to show
        redirect_to "/creatures/#{creature_id}"
    end


end