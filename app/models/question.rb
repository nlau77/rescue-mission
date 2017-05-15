class Question < ApplicationRecord
  validates :title, length: {minimum: 10}
  validates :detail, length: {minimum: 10}
  # change to 150 later
  has_many :answers
end
