class CreateStatusUpdates < ActiveRecord::Migration
  def change
    create_table :status_updates do |t|
      t.references :user, index: true, foreign_key: true
      t.text :status

      t.timestamps null: false
    end
  end
end
