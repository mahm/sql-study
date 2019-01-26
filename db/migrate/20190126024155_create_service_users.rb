class CreateServiceUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :service_users do |t|
      t.references :platform, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
