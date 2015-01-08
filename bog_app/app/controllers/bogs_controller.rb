class BogsController < ApplicationController
	def index
		@bogs = Bog.all
		render :index
	end

	def new
        render :new
    end

    def create
        bog = params.require(:bog).permit(:name, :description)
        bog = Bog.create(bog)
        redirect_to "/bogs/#{bog.id}"
    end

    def show
        bog_id = params[:id]
        @bog = Bog.find(bog_id)
        render :show
    end

    def edit
        bog_id = params[:id]
        @bog = Bog.find(bog_id)
        render :edit
    end

    def update
        bog_id = params[:id]
        bog = Bog.find(bog_id)

        # get updated data
        updated_attributes = params.require(:bog).permit(:name, :design, :description)
        # update the bog
        bog.update_attributes(updated_attributes)

        #redirect to show
        redirect_to "/bogs/#{bog_id}"
    end
end



