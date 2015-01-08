class BogsController < ApplicationController
  
  def index
    # put all existing Bog objects into @bogs
    @bogs = Bog.all
    
    # pass @bogs into index View
    render :index
  end

  def new
    # render new View; the POST form 
    render :new
  end

  def create
    # first, white-list the params taken from form
    bog = params.require(:bog).permit(:name, :description)

    # create a new Bog
    @bog = Bog.create(bog)

    # redirect_to @bog's 'show' route
    redirect_to "/bogs/#{@bog.id}"
  end

  def show
    # grab ID from params
    bog_id = params[:id]

    # find object by ID
    @bog = Bog.find(bog_id)

    # render the show route
    render :show
  end

  def edit
    # grab ID from params
    bog_id = params[:id]

    # find instance
    @bog = Bog.find(bog_id)

    # run instance method :edit
    render :edit
  end

  def update
    # grab ID from params
    bog_id = params[:id]

    # find object by ID
    bog = Bog.find(bog_id)

    # get updated data
    updated_attributes = params.require(:bog).permit(:name, :description)

    # update object instance
    bog.update_attributes(updated_attributes)

    # redirect_to 'show'
    redirect_to "/bogs/#{bog_id}"
  end

end