class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.belongs_to :will, index: true
      t.boolean :requests
      t.text :specific

      t.timestamps
    end
  end
end
