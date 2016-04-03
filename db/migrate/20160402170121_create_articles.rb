class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
     #can use rollback or can add new table using commands
    end
  end
end
