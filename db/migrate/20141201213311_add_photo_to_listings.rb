class AddPhotoToListings < ActiveRecord::Migration
  def change
    add_column :listings, :photo, :string, default: "", null: false
  end
end
