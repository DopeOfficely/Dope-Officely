class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :user, null: false, foreign_key: true
      t.references :desk, null: false, foreign_key: true

      t.timestamps
    end
  end
end
