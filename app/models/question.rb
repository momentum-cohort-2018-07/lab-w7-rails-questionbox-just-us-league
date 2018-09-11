class Question < ApplicationRecord
  belongs_to :user
  has_many :answers, dependent: :destroy
  has_one :accepted_answer, :foreign_key => "question_accepted_id", :class_name => "Answer"

  def has_accepted_answer?
    !!accepted_answer
  end
end
