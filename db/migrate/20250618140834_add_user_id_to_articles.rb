class AddUserIdToArticles < ActiveRecord::Migration[7.2]
# user idとarticleを紐づける

  def change
    add_reference :articles, :user
  end
end
