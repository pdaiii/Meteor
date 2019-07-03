# == Schema Information
#
# Table name: stories
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  body       :string           not null
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Story < ApplicationRecord
    validates :title, :body, :author_id, presence: true

    belongs_to :user,
        primary_key: :id,
        foreign_key: :author_id,
        class_name: :User

    has_many :claps,
        primary_key: :id,
        foreign_key: :story_id,
        class_name: :StoryClap

    has_many :responses,
        primary_key: :id,
        foreign_key: :story_id,
        class_name: :Response

    has_many :tags,
        primary_key: :id,
        foreign_key: :story_id,
        class_name: :Tag
end
