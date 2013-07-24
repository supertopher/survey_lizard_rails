# == Schema Information
#
# Table name: surveys
#
#  id      :integer          not null, primary key
#  name    :string(255)
#  user_id :integer
#

class Survey < ActiveRecord::Base

  has_many :questions
  belongs_to :user
  
end
