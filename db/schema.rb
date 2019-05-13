ActiveRecord::Schema.define(version: 2019_05_13_173143) do

  enable_extension "plpgsql"

  create_table "pages", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
