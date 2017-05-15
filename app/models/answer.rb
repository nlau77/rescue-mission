class Answer < ApplicationRecord
  validates :response, presence: true
  validates :response, length: {minimum: 10}
  # change to 150 later
  belongs_to :question
end
