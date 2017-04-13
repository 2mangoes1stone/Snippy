class SnippetsController < ApplicationController
  def index
    @snippets = Snippet.all
  end

  def new
    @snippet = Snippet.new
  end

  def create
    # Get the submitted form data from params
    snippet_params = params.require(:snippet).permit(:title, :description, :code)
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

  def edit
    @article = Snippet.find(params[:id])
  end
  def show
    @snippet = Snippet.find(params[:id])
  end
  


end