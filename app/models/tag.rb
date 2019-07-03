# == Schema Information
#
# Table name: tags
#
#  id          :integer          not null, primary key
#  description :string           not null
#  story_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Tag < ApplicationRecord
    validates :description, :story_id, presence: true

    belongs_to :story,
        primary_key: :id,
        foreign_key: :story_id,
        class_name: :Story
end
