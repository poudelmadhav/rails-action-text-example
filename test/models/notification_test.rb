# == Schema Information
#
# Table name: notifications
#
#  id             :integer          not null, primary key
#  recipient_type :string           not null
#  recipient_id   :integer          not null
#  type           :string           not null
#  params         :json
#  read_at        :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "test_helper"

class NotificationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
