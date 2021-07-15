class Question < ApplicationRecord
  has_and_belongs_to_many :games
  has_many :answers

  def to_s
    question
  end

  def correct_answer
    answers.where(value: true).first
  end
end
