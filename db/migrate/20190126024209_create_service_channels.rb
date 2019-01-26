class CreateServiceChannels < ActiveRecord::Migration[5.2]
  def change
    create_table :service_channels do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
