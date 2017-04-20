class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.date :date
      t.references :user, foreign_key: true
      t.string :action
      t.time :hour

      t.timestamps
    end
  end
end
