class RepliesController < ApplicationController
  # GET /replies
  # GET /replies.json
  skip_before_filter :verify_authenticity_token

  def create

    subject = params[:headers][:Subject]
    id = subject.match(/<(\d*)>/)[1]
    reply = params[:plain]

    ticket = Ticket.find(id)

    ticket.replies.build(message: reply,
      ticket_id: id
      )
    if ticket.save
      render :text => 'success', :status => 200 # a status of 404 would reject the mail
    else
      render :text => 'failure'
    end
  end
end
