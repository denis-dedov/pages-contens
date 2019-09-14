**rake db:create**

**rake db:migrate**

**rake db:seed**

```ruby
Page.count
# => 4

Page.first.content_blocks.count
# => 3

Page.first.content_blocks.first.pages.count
# => 2

Page.first.content_blocks.first.pages.pluck(:id)
# => [2, 1]

Page.first.content_blocks.first.linked_page.id
# = > 2

Page.first.content_blocks.first.linked_page.content_blocks.count
# => 6

Page.first.content_blocks.first.linked_page.content_blocks.pluck(:id)
# => [1, 4, 5, 6, 7, 8]

Page.first.content_blocks.first.linked_page.top_content_block.id
# => 1
```

The purpose of this repo is only to show a possible way to connect Pages and ContentBlocks (a raw implementation with working examples).
