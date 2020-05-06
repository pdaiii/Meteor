# == Schema Information
#
# Table name: stories
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  body       :text
#  count      :integer
#

class Story < ApplicationRecord
    has_one_attached :image

    validates :title, :body, :author_id, presence: true
    # validates :image, presence: true
    # validates :image, attached: true
    # validates :image, presence: true, blob: { content_type: :image }
    # validate :correct_image_type

    belongs_to :author,
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


    # private

    # def correct_image_type
    #     if image.attached? && !image.content_type.in?(%w(image/jpeg image/png))
    #         errors.add(:image, 'Image must be of type JPEG or PNG.')
    #     elsif !image.attached?
    #         errors.add(:image, 'Must have an image attached.')
    #     end
    # end 
end