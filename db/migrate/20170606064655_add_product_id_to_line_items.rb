class AddProductIdToLineItems < ActiveRecord::Migration[4.2]
  def change
    add_column :line_items, :product_id, :integer
  end
end
