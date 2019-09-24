class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.references :service_user, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
