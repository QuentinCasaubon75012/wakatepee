class UserProject < ApplicationRecord
  belongs_to :user
  belongs_to :project
  after_create :send_welcome_email

  private

  def send_welcome_email
    UserMailer.welcome(user).deliver_now
  end

end
