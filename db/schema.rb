ActiveRecord::Schema[7.0].define(version: 2023_09_10_023133) do
  enable_extension "plpgsql"

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
  end

end
