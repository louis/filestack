class WebhookController < ApplicationController

  skip_before_filter :verify_authenticity_token
  
  def callback
    logger.debug response.body
    render :json => { data: "Success!" }
  end
  
end
