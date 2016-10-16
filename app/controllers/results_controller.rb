class ResultsController < ApplicationController
  def index
    @search_results = Pic.search_everywhere(params[:query])
  end
end
