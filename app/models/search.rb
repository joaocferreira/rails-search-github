class Search < ActiveRecord::Base
  include HTTParty

  base_uri "https://api.github.com"
  default_params per_page: 10, q: "search"
  format :json

  def self.search term
    get('/search/repositories', query: { q: term})['items']
  end

end
