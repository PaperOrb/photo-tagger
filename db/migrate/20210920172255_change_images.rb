class ChangeImages < ActiveRecord::Migration[6.0]
  def change
    rename_column :images, :url, :filename
  end
end
