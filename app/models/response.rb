class Response < ActiveRecord::Base

  # attr_accessible
  belongs_to :user
  belongs_to :question
  belongs_to :choice

end
