class RemoveCategoryFromArticleCategories < ActiveRecord::Migration
  def change
    remove_column :article_categories, :category 
  end
end
