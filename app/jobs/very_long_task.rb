class VeryLongTask
  include Sidekiq::Worker

  def perform(data)
    sleep 60
    true # the task was completed correctly
    PropertyMailer.buy_property(data['id'], data['user_id']).deliver
  end
end
