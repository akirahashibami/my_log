class CreateVlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :vlogs do |t|

      t.integer     :user_id
      t.string      :title
      t.text        :introduction
      t.integer     :is_action, default: 1
      t.timestamps
    end
  end
end
