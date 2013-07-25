# == Schema Information
#
# Table name: questions
#
#  id        :integer          not null, primary key
#  name      :string(255)
#  survey_id :integer
#

class Question < ActiveRecord::Base

  
  has_many :choices
  has_many :responses
  belongs_to :survey
  
  attr_accessible :name, :choices_attributes
  accepts_nested_attributes_for  :choices
  
 validates_presence_of :name
end
