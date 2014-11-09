class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :user, index: true
      t.string :title, default: "",  null: false
      t.text :description, default: "",  null: false
      t.string :neighborhood, default: "",  null: false
      t.string :address, default: "",  null: false
      t.string :city, default: "",  null: false
      t.string :state, default: "",  null: false
      t.string :country, default: "",  null: false
      t.decimal :price, default: 0,  null: false

      t.timestamps
    end
  end
end
