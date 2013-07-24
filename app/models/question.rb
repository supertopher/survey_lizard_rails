# == Schema Information
#
# Table name: questions
#
#  id        :integer          not null, primary key
#  name      :string(255)
#  survey_id :integer
#

class Question < ActiveRecord::Base
  attr_accessible :name
  
  has_many :choices
  has_many :responses
  belongs_to :survey
  
  
 validates_presence_of :name
end
