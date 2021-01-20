class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.text    :comment,     null: false
      t.integer :category_id, null: false
      t.references :user,     foreign_key: true
      t.timestamps

      # comment     :コメント
      # category_id :カテゴリー

    end
  end
end
