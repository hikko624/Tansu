class SlackSetting < ActiveRecord::Base
  store :data, accessors: %i(notify_enable notify_new_product notify_lent_product notify_returned_product notify_webhook_url)
  def self.instance
    instance = SlackSetting.find_by_id(1) || SlackSetting.create_instance
  end
  def self.create_instance
    instance = SlackSetting.new
    instance.notify_enable = false
    instance.notify_new_product = false
    instance.notify_lent_product = false
    instance.notify_returned_product = false
    instance.save
    redirect_to root_path
  end
end
