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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150923175340) do

  create_table "abouts", :force => true do |t|
    t.text     "text1"
    t.text     "text2"
    t.text     "text3"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "image1_file_name"
    t.string   "image1_content_type"
    t.integer  "image1_file_size"
    t.datetime "image1_updated_at"
    t.string   "image2_file_name"
    t.string   "image2_content_type"
    t.integer  "image2_file_size"
    t.datetime "image2_updated_at"
    t.string   "image3_file_name"
    t.string   "image3_content_type"
    t.integer  "image3_file_size"
    t.datetime "image3_updated_at"
    t.string   "image4_file_name"
    t.string   "image4_content_type"
    t.integer  "image4_file_size"
    t.datetime "image4_updated_at"
    t.string   "image5_file_name"
    t.string   "image5_content_type"
    t.integer  "image5_file_size"
    t.datetime "image5_updated_at"
    t.string   "image6_file_name"
    t.string   "image6_content_type"
    t.integer  "image6_file_size"
    t.datetime "image6_updated_at"
  end

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "description"
    t.integer  "order",       :default => 0,    :null => false
    t.boolean  "active",      :default => true, :null => false
    t.boolean  "published",   :default => true, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "cases", :force => true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "description"
    t.boolean  "active",                :default => true,  :null => false
    t.boolean  "published",             :default => true,  :null => false
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.string   "main_img_file_name"
    t.string   "main_img_content_type"
    t.integer  "main_img_file_size"
    t.datetime "main_img_updated_at"
    t.string   "img1_file_name"
    t.string   "img1_content_type"
    t.integer  "img1_file_size"
    t.datetime "img1_updated_at"
    t.string   "img2_file_name"
    t.string   "img2_content_type"
    t.integer  "img2_file_size"
    t.datetime "img2_updated_at"
    t.string   "img3_file_name"
    t.string   "img3_content_type"
    t.integer  "img3_file_size"
    t.datetime "img3_updated_at"
    t.boolean  "highlight",             :default => false, :null => false
    t.integer  "order"
    t.string   "resume"
  end

  create_table "cases_materials", :id => false, :force => true do |t|
    t.integer "case_id"
    t.integer "material_id"
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "active",                      :default => true, :null => false
    t.boolean  "published",                   :default => true, :null => false
    t.boolean  "highlighted"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.string   "image_category_file_name"
    t.string   "image_category_content_type"
    t.integer  "image_category_file_size"
    t.datetime "image_category_updated_at"
    t.integer  "father_id"
    t.string   "subtitle"
  end

  create_table "category_services", :force => true do |t|
    t.integer  "category_id"
    t.integer  "service_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "city"
    t.string   "state"
    t.string   "business"
    t.text     "message"
    t.boolean  "published",  :default => true, :null => false
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "surname"
    t.string   "subject"
  end

  create_table "customers", :force => true do |t|
    t.string   "title"
    t.boolean  "active",             :default => true
    t.boolean  "published",          :default => false
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "highlights", :force => true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "link"
    t.datetime "publication_start"
    t.datetime "publication_stop"
    t.integer  "order",                        :default => 0,    :null => false
    t.boolean  "active",                       :default => true, :null => false
    t.boolean  "published",                    :default => true, :null => false
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "image_highlight_file_name"
    t.string   "image_highlight_content_type"
    t.integer  "image_highlight_file_size"
    t.datetime "image_highlight_updated_at"
  end

  create_table "materials", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "features"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "materials_services", :id => false, :force => true do |t|
    t.integer "material_id"
    t.integer "service_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "name",              :limit => 40
    t.string   "authorizable_type", :limit => 40
    t.integer  "authorizable_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "service_images", :force => true do |t|
    t.string   "title"
    t.integer  "order",                    :default => 1,    :null => false
    t.integer  "service_id"
    t.boolean  "active",                   :default => true, :null => false
    t.boolean  "published",                :default => true, :null => false
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "img_service_file_name"
    t.string   "img_service_content_type"
    t.integer  "img_service_file_size"
    t.datetime "img_service_updated_at"
  end

  create_table "services", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "highlight",                :default => false, :null => false
    t.boolean  "active",                   :default => true,  :null => false
    t.boolean  "published",                :default => true,  :null => false
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.string   "service_img_file_name"
    t.string   "service_img_content_type"
    t.integer  "service_img_file_size"
    t.datetime "service_img_updated_at"
    t.string   "subtitle"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string   "name",                              :null => false
    t.string   "last_name"
    t.string   "email",                             :null => false
    t.string   "crypted_password",                  :null => false
    t.string   "password_salt",                     :null => false
    t.string   "persistence_token",                 :null => false
    t.string   "perishable_token",                  :null => false
    t.integer  "login_count",        :default => 0, :null => false
    t.integer  "failed_login_count", :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

end
