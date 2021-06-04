class Question < ApplicationRecord
  has_and_belongs_to_many :games
  has_many :answers

  def to_s
    question
  end
end
