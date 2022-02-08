class QuotesController < ApplicationController
  def index
    @quotes = Quote.all.includes(:author, :tags)
  end
end
