# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  user_name     :string(255)
#  password_hash :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :user_name, :password

  has_many :surveys
  has_many :responses

  validates_presence_of :user_name
  validates_presence_of :password_digest
  
end
