require 'twilio-ruby' 

module Phone

	def send_text
		client = Twilio::REST::Client.new ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'] 
		account = client.account
		message = account.sms.messages.create({:body => "Thank you for placing your order. Your pizza will arrive by #{(Time.now + 3600).strftime '%r'}",
				  :to => ENV['PHONE_NO'],
				  :from => ENV['TWILIO_NO']})
		puts message
		text_sent = true
	end

	def text_sent?
		text_sent
	end

end