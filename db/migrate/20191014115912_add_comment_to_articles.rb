class AddCommentToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :comment, :text, :after => :url
  end
end
