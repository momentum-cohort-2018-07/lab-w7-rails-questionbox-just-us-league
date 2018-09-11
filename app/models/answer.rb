class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_many :votes

  def score
    votes.map {|vote| vote.value}.inject(:+) || 0
  end
end
