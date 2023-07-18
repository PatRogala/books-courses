class CreateWidgets < ActiveRecord::Migration[6.1]
  def change
    create_table :widgets do |t|
      t.text :name
      t.text :status
      t.references :manufacturer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
