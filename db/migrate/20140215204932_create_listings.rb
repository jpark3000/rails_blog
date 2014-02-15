class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :post, index: true
      t.references :tag, index: true
    end
  end
end
