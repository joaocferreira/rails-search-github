class SearchController < ApplicationController
   def index
    @search = params[:search] || 'something'
    @reps = Search.search(@search)
  end
end

