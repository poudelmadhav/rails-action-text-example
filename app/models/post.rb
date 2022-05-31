# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
  has_rich_text :body

  after_commit :send_notification, on: :create

  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :comments

  private

  def send_notification
    PostNotification.with(post: self).deliver_later(User.all)
  end
end
