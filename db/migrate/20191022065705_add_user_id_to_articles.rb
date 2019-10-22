class AddUserIdToArticles < ActiveRecord::Migration[5.2]
  def change
    execute 'delete from articles;'
    add_reference :articles, :user, null: false, index: true
  end
end
