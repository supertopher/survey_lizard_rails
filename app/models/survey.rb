# == Schema Information
#
# Table name: surveys
#
#  id      :integer          not null, primary key
#  name    :string(255)
#  user_id :integer
#

class Survey < ActiveRecord::Base


  attr_accessible :name, :questions_attributes
  has_many :questions
  belongs_to :user
  accepts_nested_attributes_for :questions
end
