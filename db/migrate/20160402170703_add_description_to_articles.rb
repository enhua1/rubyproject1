class AddDescriptionToArticles < ActiveRecord::Migration
  def change
    # add column -> function, (tables), (name field), (type)
    add_column :articles, :description, :text
    #must be created at / and datetime
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
