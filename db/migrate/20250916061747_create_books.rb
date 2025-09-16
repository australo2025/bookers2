class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title, null: false           # 本のタイトル
      t.text :body, null: false              # 感想
      t.references :user, null: false, foreign_key: true # 投稿したユーザーとの関連

      t.timestamps
    end
  end
end