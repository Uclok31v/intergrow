class ChangeArticlesTitleLimit30 < ActiveRecord::Migration[5.2]
  def change
    change_column :articles, :title, :string, limit: 30
  end
end
