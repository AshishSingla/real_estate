# Preview all emails at http://localhost:3000/rails/mailers/property_mailer
class PropertyMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/property_mailer/buy_property
  def buy_property
    PropertyMailer.buy_property
  end

end
