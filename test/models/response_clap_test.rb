# == Schema Information
#
# Table name: response_claps
#
#  id          :integer          not null, primary key
#  response_id :integer          not null
#  clapper_id  :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ResponseClapTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
