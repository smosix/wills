class Order < ActiveRecord::Base

  belongs_to :will

  serialize :notification_params, Hash
  def paypal_url(return_path)
    values = {
        business: "contact@notaryexpress.co.uk",
        cmd: "_xclick",
        upload: 1,
        return: "#{Rails.application.secrets.app_host}#{return_path}",
        invoice: id,
        amount: price,
        item_name: full_name,
        item_number: id,
        :currency_code => 'GBP',
        quantity: '1',
        notify_url: "https://expresswills.herokuapp.com/hook"
    }
    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end

end
