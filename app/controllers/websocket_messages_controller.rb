class WebsocketMessagesController < ApplicationController
  def receive_message
    message = message();
    broadcast_message :show_messge, send_message
  end  

end
