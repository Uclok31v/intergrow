class AddDefaultToArticlesCount < ActiveRecord::Migration[5.2]
  def change
    change_column_null :articles, :count, false
    change_column_default :articles, :count, 0
  end
end
