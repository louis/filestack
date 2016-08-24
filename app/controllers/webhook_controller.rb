class WebhookController < ApplicationController
  
  def callback
    logger.debug response.body
    render :json => { data: "Success!" }
  end
  
end
