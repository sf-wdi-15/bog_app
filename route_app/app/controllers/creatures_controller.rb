class CreaturesController < ApplicationController
	def index

		@creatures = creature.all
		render :index
	end

	def new
		render :new
	end
end