class SnippetsController < ApplicationController
  before_action :set_snippet, only: [:edit, :update, :show, :destroy]

  def index
    @snippets = Snippet.all
  end

  def new
    @snippet = Snippet.new
  end

  def edit
  end

  def create
    # Get the submitted form data from params
    # Create a new model object with that data
    @snippet = Snippet.new(snippet_params)
    # Attempt to save that model to the database
    if @snippet.save
      # If saved, then redirect to that snippet’s page
      redirect_to @snippet, notice: 'Your snippet was created'
    else
      # Otherwise, show the user the form again with errors
      render :new
    end
  end

  def update
    if @snippet.update(snippet_params)
      flash[:notice] = "Snippet was successfully edited "
      redirect_to @snippet
    else
      render :edit
    end
    
  end

  def show
  end

  def destroy
    @snippet.destroy
    flash[:notice] = "Snippet was successfully deleted "
    redirect_to @snippet
  end
  
  private
    def set_snippet
      @snippet = Snippet.find(params[:id])
    end

    def snippet_params
      params.require(:snippet).permit(:title, :description, :code)
    end
end