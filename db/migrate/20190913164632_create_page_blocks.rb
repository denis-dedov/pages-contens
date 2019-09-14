class CreatePageBlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :page_blocks do |t|
      t.belongs_to :content_block, index: true, foreign_key: true
      t.belongs_to :page, index: true, foreign_key: true
      t.integer :order

      t.timestamps
    end
  end
end
