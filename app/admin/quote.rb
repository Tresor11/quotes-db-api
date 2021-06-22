# frozen_string_literal: true

ActiveAdmin.register Quote do
  permit_params :quote, :author_id, :category_id
end
