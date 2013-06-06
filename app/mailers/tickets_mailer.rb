class TicketsMailer < ActionMailer::Base
  default to: "helpdesk@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.tickets_mailer.send_ticket.subject
  #
  def send_ticket(ticket)
    @ticket = ticket
    @email = ticket.email

    mail from: ticket.email, subject: ticket.subject
  end
end
