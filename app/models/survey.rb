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
  attr_accessible :name, :questions_attributes, :user
  accepts_nested_attributes_for :questions
  
  belongs_to :user
end
