class PropertyMailer < ApplicationMailer

  def buy_property(property_id, user_id)
    @user = User.where(id: user_id).first
    @property = Property.where(id: property_id).first
    mail(to: [@property&.owner, @user&.email], subject: 'Someone wants to buy your property')
  end
end
