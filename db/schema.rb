# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_13_164632) do

  create_table "content_blocks", force: :cascade do |t|
    t.string "content"
    t.string "image"
    t.string "styles"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "page_blocks", force: :cascade do |t|
    t.integer "content_block_id"
    t.integer "page_id"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["content_block_id"], name: "index_page_blocks_on_content_block_id"
    t.index ["page_id"], name: "index_page_blocks_on_page_id"
  end

  create_table "pages", force: :cascade do |t|
    t.boolean "default"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "page_blocks", "content_blocks"
  add_foreign_key "page_blocks", "pages"
end
