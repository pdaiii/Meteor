# == Schema Information
#
# Table name: response_claps
#
#  id          :bigint           not null, primary key
#  response_id :integer          not null
#  clapper_id  :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ResponseClap < ApplicationRecord
    validates :response_id, :clapper_id, presence: true

    belongs_to :user,
        primary_key: :id,
        foreign_key: :clapper_id,
        class_name: :User

    belongs_to :response,
        primary_key: :id,
        foreign_key: :response_id,
        class_name: :Response
end
