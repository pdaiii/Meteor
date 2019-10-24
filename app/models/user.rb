# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :username, :password_digest, :session_token, presence: true
  validates :username, :session_token, uniqueness: true
  validates :password, length: {minimum: 6, allow_nil: true}

  after_initialize :ensure_session_token

  attr_reader :password

  has_many :stories,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :Story

  has_many :story_claps,
    primary_key: :id,
    foreign_key: :clapper_id,
    class_name: :StoryClap

  has_many :responses,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :Response

  has_many :response_claps,
    primary_key: :id,
    foreign_key: :clapper_id,
    class_name: :ResponseClap

  has_many :follows,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :Follow
  
  has_many :users_followed,
    primary_key: :id,
    foreign_key: :follower_id,
    class_name: :Follow

  # has_many :follows,
  #   primary_key: :id,
  #   foreign_key: :follower_id,
  #   class_name: :Follows

  # has_many :users_followed,
  #   primary_key: :id,
  #   foreign_key: :user_id,
  #   class_name: :Follows
  
  has_many :followers,
    through: :follows,
    source: :follower
  
  has_many :followees,
    through: :users_followed,
    source: :followee

  # Checks if there is a valid username and password registered
  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    if user
      user.valid_password?(password) ? user : nil
    else
      return nil
    end
  end

  # BCrypts the password and assigns it as the password digest
  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  # Checks the password given against the BCrypted password digest
  def valid_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  # Reassigns the session token using the SecureRandom and returns the session token
  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64
    self.save!
    self.session_token
  end

  private
  # Return the session token if the user is logged in, else generate a randomized session token
  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end
end