class TicketsMailer < ActionMailer::Base
  default from: "81e384896e6ac4d506f5@cloudmailin.net"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.tickets_mailer.send_ticket.subject
  #
  def send_ticket(ticket)
    @ticket = ticket
    @email = ticket.email

    mail to: ticket.email, subject: ticket.subject + "Ticket (1)"
  end
end
