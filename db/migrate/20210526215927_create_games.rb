class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :score, default: 0

      t.timestamps
    end

    create_table :games_questions, id: false do |t|
      t.belongs_to :game
      t.belongs_to :question
    end
  end
end
