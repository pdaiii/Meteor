# == Schema Information
#
# Table name: responses
#
#  id         :integer          not null, primary key
#  body       :string           not null
#  story_id   :integer          not null
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Response < ApplicationRecord
    validates :body, :story_id, :author_id, presence: true

    belongs_to :user,
        primary_key: :id,
        foreign_key: :author_id,
        class_name: :User

    belongs_to :story,
        primary_key: :id,
        foreign_key: :story_id,
        class_name: :Story

    has_many :claps,
        primary_key: :id,
        foreign_key: :response_id,
        class_name: :ResponseClap
end
