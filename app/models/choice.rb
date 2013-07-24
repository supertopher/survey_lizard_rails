# == Schema Information
#
# Table name: choices
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  question_id :integer
#

class Choice < ActiveRecord::Base
  belongs_to :question
  has_many :responses
  
  validates_presence_of :name
end
