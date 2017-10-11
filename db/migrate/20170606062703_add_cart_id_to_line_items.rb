class AddCartIdToLineItems < ActiveRecord::Migration[4.2]
  def change
    add_column :line_items, :cart_id, :integer
  end
end
