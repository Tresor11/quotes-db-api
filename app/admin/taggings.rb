ActiveAdmin.register Tagging do
  permit_params :quote_id, :tag_id
  # in the form show the quote content
  form do |f|
    f.inputs do
      f.input :quote_id, :as => :select, :collection => Quote.all.map{|q| [q.content, q.id]}, :prompt => "Select a quote"
      f.input :tag_id, :as => :select, :collection => Tag.all.map{|t| [t.name, t.id]}, :prompt => "Select a tag"
    end
    f.actions
  end
end
