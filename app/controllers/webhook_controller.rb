class WebhookController < ApplicationController

  skip_before_filter :verify_authenticity_token
  
  def callback
    logger.debug "REQUEST: #{request.raw_post}"
    logger.debug "RESPONSE: #{response.body}"
    logger.debug "AMAZON MESSAGE TYPE: #{response['x-amz-sns-message-type']}"
    render :json => { data: "Success!" }
  end
  
end
