class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :date_of_event
      t.string :place

      t.timestamps
    end
  end
end
