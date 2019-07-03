# == Schema Information
#
# Table name: story_claps
#
#  id         :integer          not null, primary key
#  story_id   :integer          not null
#  clapper_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class StoryClap < ApplicationRecord
    validates :story_id, :clapper_id, presence: true

    belongs_to :user,
        primary_key: :id,
        foreign_key: :clapper_id,
        class_name: :User

    belongs_to :story,
        primary_key: :id,
        foreign_key: :story_id,
        class_name: :Story
end
