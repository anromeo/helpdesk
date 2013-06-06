class Ticket < ActiveRecord::Base
  attr_accessible :email, :problem, :subject
end
