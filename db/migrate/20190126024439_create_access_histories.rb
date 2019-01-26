class CreateAccessHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :access_histories do |t|
      t.references :service_user, foreign_key: true
      t.references :service_channel, foreign_key: true
      t.references :book, foreign_key: true
      t.datetime :accessed_at, null: false

      t.timestamps
    end
  end
end
