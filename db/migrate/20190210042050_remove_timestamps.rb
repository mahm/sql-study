class RemoveTimestamps < ActiveRecord::Migration[5.2]
  def change
    remove_column :access_histories, :created_at
    remove_column :access_histories, :updated_at
    remove_column :books, :created_at
    remove_column :books, :updated_at
    remove_column :categories, :created_at
    remove_column :categories, :updated_at
    remove_column :platforms, :created_at
    remove_column :platforms, :updated_at
    remove_column :service_channels, :created_at
    remove_column :service_channels, :updated_at
    remove_column :service_users, :created_at
    remove_column :service_users, :updated_at
  end
end
