# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1.times { Page.create(default: true) }
3.times { Page.create }

3.times { |i| Page.first.content_blocks.create(content: "Linked Content #{i+1} of Page 1 to Page #{i+2}", linked_page: Page.find(i+2)) }
5.times { |i| Page.second.content_blocks.create(content: "Content #{i+1} of Page 2") }
2.times { |i| Page.third.content_blocks.create(content: "Content #{i+1} of Page 3") }
6.times { |i| Page.fourth.content_blocks.create(content: "Content #{i+1} of Page 4") }
