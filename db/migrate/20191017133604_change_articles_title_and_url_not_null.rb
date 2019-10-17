class ChangeArticlesTitleAndUrlNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :articles, :title, false
    change_column_null :articles, :url, false
  end
end
