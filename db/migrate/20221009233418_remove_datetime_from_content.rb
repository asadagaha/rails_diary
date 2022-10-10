class RemoveDatetimeFromContent < ActiveRecord::Migration[6.0]
  def change
    remove_column :contents, :datetime, :start_time
  end
end
