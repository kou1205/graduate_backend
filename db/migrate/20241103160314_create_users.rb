class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :graduation_year
      t.string :company_name

      t.timestamps
    end
  end
end
# ユーザーテーブル