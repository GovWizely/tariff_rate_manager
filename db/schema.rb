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

ActiveRecord::Schema.define(version: 2018_12_27_181013) do

  create_table "tariffs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "country_code"
    t.string "country_name"
    t.integer "final_year"
    t.string "hs_6"
    t.text "link_text"
    t.string "link_url"
    t.string "partner_agreement_name"
    t.string "partner_name"
    t.integer "partner_start_year"
    t.string "quota_name"
    t.string "reporter_agreement_name"
    t.string "reporter_name"
    t.integer "reporter_start_year"
    t.text "rule_text"
    t.string "source_id"
    t.string "staging_basket"
    t.text "subheading_description"
    t.string "tariff_eliminated"
    t.string "tariff_line"
    t.text "tariff_line_description"
    t.string "tariff_rate_quota"
    t.text "tariff_rate_quota_note"
    t.float "base_rate"
    t.float "base_rate_alt"
    t.float "y2004"
    t.float "y2005"
    t.float "y2006"
    t.float "y2007"
    t.float "y2008"
    t.float "y2009"
    t.float "y2010"
    t.float "y2011"
    t.float "y2012"
    t.float "y2013"
    t.float "y2014"
    t.float "y2015"
    t.float "y2016"
    t.float "y2017"
    t.float "y2018"
    t.float "y2019"
    t.float "y2020"
    t.float "y2021"
    t.float "y2022"
    t.float "y2023"
    t.float "y2024"
    t.float "y2025"
    t.float "y2026"
    t.float "y2027"
    t.float "y2028"
    t.float "y2029"
    t.float "y2030"
    t.float "y2031"
    t.float "alt_2004"
    t.float "alt_2005"
    t.float "alt_2006"
    t.float "alt_2007"
    t.float "alt_2008"
    t.float "alt_2009"
    t.float "alt_2010"
    t.float "alt_2011"
    t.float "alt_2012"
    t.float "alt_2013"
    t.float "alt_2014"
    t.float "alt_2015"
    t.float "alt_2016"
    t.float "alt_2017"
    t.float "alt_2018"
    t.float "alt_2019"
    t.float "alt_2020"
    t.float "alt_2021"
    t.float "alt_2022"
    t.float "alt_2023"
    t.float "alt_2024"
    t.float "alt_2025"
    t.float "alt_2026"
    t.float "alt_2027"
    t.float "alt_2028"
    t.float "alt_2029"
    t.float "alt_2030"
    t.float "alt_2031"
    t.index ["country_code"], name: "index_tariffs_on_country_code"
  end

end
