class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string     :title, null: false
      t.string     :eat_time
      t.string     :time_taken
      t.text       :recipe
      t.text       :supplement
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
