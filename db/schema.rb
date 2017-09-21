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

ActiveRecord::Schema.define(version: 20170921022137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genes", force: :cascade do |t|
    t.bigint "organism_id"
    t.string "gene_name"
    t.string "chromosome_name"
    t.integer "start_position"
    t.integer "end_position"
    t.string "orientation"
    t.string "definition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organism_id"], name: "index_genes_on_organism_id"
  end

  create_table "organisms", force: :cascade do |t|
    t.string "data_source_name"
    t.string "full_name"
    t.integer "tax_id"
    t.string "tax_lineage"
    t.string "release_note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "genes", "organisms"
end
