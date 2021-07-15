class Answer < ApplicationRecord
  belongs_to :question

  def value_to_s
    value ? 'Correcto!' : 'Incorrecto!'
  end

  def to_s
    answer
  end

  def color
    if value
      'green'
    else
      'red'
    end
  end
end
