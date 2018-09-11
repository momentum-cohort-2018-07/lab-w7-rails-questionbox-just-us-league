class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  # validates :question_accepted_id, uniqueness: true
  has_many :votes

  def score
    votes.map {|vote| vote.value}.inject(:+) || 0
  end

  def accepted?
    !!question_accepted_id
  end
end
