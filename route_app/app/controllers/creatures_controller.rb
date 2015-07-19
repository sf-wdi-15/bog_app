class CreaturesController < ApplicationController
	def index

		@creatures = Creatures.all
		render :index
	end

	def new
		render :new
	end
end