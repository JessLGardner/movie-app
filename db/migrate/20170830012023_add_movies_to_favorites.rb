class AddMoviesToFavorites < ActiveRecord::Migration[5.1]
  def change
    add_reference :favorites, :movie, foreign_key: true
  end
end
