class AddColumnContents < ActiveRecord::Migration[6.0]
  def change
    add_column :contents, :date, :datetime
  end
end
