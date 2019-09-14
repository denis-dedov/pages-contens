class ContentBlock < ApplicationRecord
  has_many :page_blocks
  has_many :pages, through: :page_blocks
  has_one :page_block, -> { where(order: 0) }
  has_one :linked_page, through: :page_block, source: :page
end
