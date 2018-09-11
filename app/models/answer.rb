class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  # validates :question_accepted_id, uniqueness: true
end
