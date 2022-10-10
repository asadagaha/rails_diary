class AddDatetimeToContent < ActiveRecord::Migration[6.0]
  def change
    add_column :contents, :datetime, :start_time
  end
end
