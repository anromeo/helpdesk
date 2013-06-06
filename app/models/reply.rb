class Reply < ActiveRecord::Base
  attr_accessible :message, :ticket_id

  belongs_to :ticket
end
