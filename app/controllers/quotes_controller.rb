# frozen_string_literal: true

class QuotesController < ApplicationController
  def index
    @quotes = Quote.all.includes(:author, :category)
    render json: formatted_quotes
  end

  private

  def formatted_quotes
    @quotes.map do |q|
      {
        id: q.id,
        quote: q.quote,
        author: {
          name: q.author.name,
          id: q.author_id
        },
        category: {
          name: q.category.name,
          id: q.category_id
        }
      }
    end
  end
end
