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

ActiveRecord::Schema[7.0].define(version: 2022_10_24_172944) do
  create_table "answers", force: :cascade do |t|
    t.string "answer_content"
    t.integer "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "quiz"
    t.integer "answer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_questions_on_answer_id"
  end

  create_table "student_answers", force: :cascade do |t|
    t.integer "question_id", null: false
    t.integer "user_id", null: false
    t.integer "answer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_student_answers_on_answer_id"
    t.index ["question_id"], name: "index_student_answers_on_question_id"
    t.index ["user_id"], name: "index_student_answers_on_user_id"
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "questions", "answers"
  add_foreign_key "student_answers", "answers"
  add_foreign_key "student_answers", "questions"
  add_foreign_key "student_answers", "users"
end
