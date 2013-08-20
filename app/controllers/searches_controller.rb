class SearchesController < ApplicationController

  def new
  end

  def create
    redirect_to search_path(params[:search][:search_term])
  end

  def show
    term = '#' + params[:id]
    @results = Twitter.search(term).results
  end

end
