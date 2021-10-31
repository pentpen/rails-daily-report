class CreateWorkItems < ActiveRecord::Migration[6.1]
  def change
    create_table :work_items do |t|
      t.string :name
      t.string :label

      t.timestamps
    end
  end
end
