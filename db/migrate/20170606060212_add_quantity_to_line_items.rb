class AddQuantityToLineItems < ActiveRecord::Migration[4.2]
  def change
    add_column :line_items, :quantity, :integer, default: 1
  end
end
