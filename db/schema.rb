# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_07_102605) do

  create_table "games", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "image", null: false
    t.text "text", null: false
    t.string "platform", null: false
    t.string "genre", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "user_id"
  end

  create_table "likes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_likes_on_game_id"
    t.index ["user_id", "game_id"], name: "index_likes_on_user_id_and_game_id", unique: true
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "pcgames", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "game_id"
    t.bigint "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_pcgames_on_game_id"
    t.index ["review_id"], name: "index_pcgames_on_review_id"
    t.index ["user_id"], name: "index_pcgames_on_user_id"
  end

  create_table "reviews", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "title", null: false
    t.integer "rate"
    t.text "review", null: false
    t.integer "user_id"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "socialgames", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "game_id"
    t.bigint "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_socialgames_on_game_id"
    t.index ["review_id"], name: "index_socialgames_on_review_id"
    t.index ["user_id"], name: "index_socialgames_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videogames", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "game_id"
    t.bigint "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_videogames_on_game_id"
    t.index ["review_id"], name: "index_videogames_on_review_id"
    t.index ["user_id"], name: "index_videogames_on_user_id"
  end

  add_foreign_key "likes", "games"
  add_foreign_key "likes", "users"
  add_foreign_key "pcgames", "games"
  add_foreign_key "pcgames", "reviews"
  add_foreign_key "pcgames", "users"
  add_foreign_key "socialgames", "games"
  add_foreign_key "socialgames", "reviews"
  add_foreign_key "socialgames", "users"
  add_foreign_key "videogames", "games"
  add_foreign_key "videogames", "reviews"
  add_foreign_key "videogames", "users"
end
