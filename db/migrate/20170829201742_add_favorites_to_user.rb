class AddFavoritesToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :favorites, foreign_key: true
  end
end
