class PageBlock < ApplicationRecord
  belongs_to :page
  belongs_to :content_block
end
