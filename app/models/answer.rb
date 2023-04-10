class Answer < ApplicationRecord
    validates :answer_author_id, :question_id, :body, presence: true
    validates :body, length: {in: 1..1999, 'Body must exist'}
    validates :answer_author_id, uniqueness: {scoped_to: :question_id, 'You have already submitted an answer to this question'}
end
