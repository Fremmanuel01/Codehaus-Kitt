# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_02_22_193903) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.bigint "class_session_id", null: false
    t.datetime "created_at", null: false
    t.string "status"
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["class_session_id"], name: "index_attendances_on_class_session_id"
    t.index ["user_id"], name: "index_attendances_on_user_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "instructions"
    t.integer "position"
    t.string "title"
    t.bigint "track_id", null: false
    t.datetime "updated_at", null: false
    t.index ["track_id"], name: "index_challenges_on_track_id"
  end

  create_table "class_sessions", force: :cascade do |t|
    t.bigint "cohort_id", null: false
    t.datetime "created_at", null: false
    t.date "date"
    t.datetime "ends_at"
    t.integer "late_after_minutes"
    t.datetime "starts_at"
    t.datetime "updated_at", null: false
    t.index ["cohort_id"], name: "index_class_sessions_on_cohort_id"
  end

  create_table "cohorts", force: :cascade do |t|
    t.string "city"
    t.datetime "created_at", null: false
    t.date "end_date"
    t.string "name"
    t.date "start_date"
    t.datetime "updated_at", null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.bigint "cohort_id", null: false
    t.datetime "created_at", null: false
    t.string "role"
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["cohort_id"], name: "index_enrollments_on_cohort_id"
    t.index ["user_id"], name: "index_enrollments_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.bigint "cohort_id", null: false
    t.datetime "created_at", null: false
    t.datetime "end_time"
    t.datetime "start_time"
    t.string "title"
    t.datetime "updated_at", null: false
    t.index ["cohort_id"], name: "index_events_on_cohort_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.boolean "pending"
    t.bigint "student_id", null: false
    t.bigint "teacher_id", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_feedbacks_on_student_id"
    t.index ["teacher_id"], name: "index_feedbacks_on_teacher_id"
  end

  create_table "flashcard_decks", force: :cascade do |t|
    t.integer "cards_count"
    t.datetime "created_at", null: false
    t.string "section"
    t.string "title"
    t.datetime "updated_at", null: false
  end

  create_table "flashcards", force: :cascade do |t|
    t.text "answer"
    t.datetime "created_at", null: false
    t.bigint "flashcard_deck_id", null: false
    t.text "question"
    t.datetime "updated_at", null: false
    t.index ["flashcard_deck_id"], name: "index_flashcards_on_flashcard_deck_id"
  end

  create_table "lectures", force: :cascade do |t|
    t.bigint "cohort_id", null: false
    t.datetime "created_at", null: false
    t.date "date"
    t.integer "slide_count"
    t.bigint "teacher_id", null: false
    t.string "title"
    t.datetime "updated_at", null: false
    t.integer "week"
    t.index ["cohort_id"], name: "index_lectures_on_cohort_id"
    t.index ["teacher_id"], name: "index_lectures_on_teacher_id"
  end

  create_table "product_team_members", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "product_id", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["product_id"], name: "index_product_team_members_on_product_id"
    t.index ["user_id"], name: "index_product_team_members_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "cohort_id", null: false
    t.datetime "created_at", null: false
    t.string "name"
    t.string "status"
    t.datetime "updated_at", null: false
    t.index ["cohort_id"], name: "index_products_on_cohort_id"
  end

  create_table "submissions", force: :cascade do |t|
    t.bigint "challenge_id", null: false
    t.datetime "created_at", null: false
    t.text "feedback"
    t.string "link_url"
    t.text "notes"
    t.string "status"
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["challenge_id"], name: "index_submissions_on_challenge_id"
    t.index ["user_id"], name: "index_submissions_on_user_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.integer "position"
    t.datetime "updated_at", null: false
  end

  create_table "user_flashcard_progresses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "flashcard_deck_id", null: false
    t.integer "progress_percent"
    t.integer "status"
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["flashcard_deck_id"], name: "index_user_flashcard_progresses_on_flashcard_deck_id"
    t.index ["user_id"], name: "index_user_flashcard_progresses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "avatar_url"
    t.text "bio"
    t.bigint "cohort_id"
    t.datetime "created_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.datetime "remember_created_at"
    t.datetime "reset_password_sent_at"
    t.string "reset_password_token"
    t.integer "role", default: 0
    t.datetime "updated_at", null: false
    t.index ["cohort_id"], name: "index_users_on_cohort_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "attendances", "class_sessions"
  add_foreign_key "attendances", "users"
  add_foreign_key "challenges", "tracks"
  add_foreign_key "class_sessions", "cohorts"
  add_foreign_key "enrollments", "cohorts"
  add_foreign_key "enrollments", "users"
  add_foreign_key "events", "cohorts"
  add_foreign_key "feedbacks", "users", column: "student_id"
  add_foreign_key "feedbacks", "users", column: "teacher_id"
  add_foreign_key "flashcards", "flashcard_decks"
  add_foreign_key "lectures", "cohorts"
  add_foreign_key "lectures", "users", column: "teacher_id"
  add_foreign_key "product_team_members", "products"
  add_foreign_key "product_team_members", "users"
  add_foreign_key "products", "cohorts"
  add_foreign_key "submissions", "challenges"
  add_foreign_key "submissions", "users"
  add_foreign_key "user_flashcard_progresses", "flashcard_decks"
  add_foreign_key "user_flashcard_progresses", "users"
end
