class RepliesController < ApplicationController
  # GET /replies
  # GET /replies.json
  skip_before_filter :verify_authenticity_token

  def create

    subject = params[:headers][:Subject]
    id = subject.match(/\d+$/).to_s
    reply = params[:plain]

    ticket = Ticket.find(id)

    ticket.reply.create(message: reply,
      ticket_id: id
      )
    render :text => 'success', :status => 200 # a status of 404 would reject the mail
  end
end
