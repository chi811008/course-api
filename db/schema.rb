ActiveRecord::Schema[7.0].define(version: 2022_11_29_054326) do
  create_table "courses", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.string "lecturer_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.integer "order", null: false
    t.string "name", null: false
    t.integer "course_id"
    t.text "description"
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_units_on_course_id"
  end

  add_foreign_key "units", "courses"
end
