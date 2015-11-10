class ContactMailer < ApplicationMailer
  def contact(inquiry)
    mail to: 'matt@mwitek.com',
         subject: "Website contact request",
         from: inquiry.email,
         body: inquiry.body
  end
end
