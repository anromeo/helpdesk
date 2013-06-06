class Ticket < ActiveRecord::Base
  attr_accessible :email, :problem, :subject

  has_many :replies
end
