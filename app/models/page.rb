class Page < ApplicationRecord
  has_many :page_blocks
  has_many :content_blocks, through: :page_blocks
  has_one :page_block, -> { where(order: 0) }
  has_one :top_content_block, through: :page_block, source: :content_block
end
