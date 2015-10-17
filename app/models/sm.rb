class Sm < ActiveRecord::Base
	require 'rubygems'
	require 'twilio-ruby'

	account_sid = "AC59e489125e99284e7cdb96dedee2ac12"
	auth_token = "e772b89dab93a5884f707980c67b7382"
	client = Twilio::REST::Client.new(account_sid, auth_token)

	from = "+14159998888" # Your Twilio number

	friends = {
		"+14153334444" => "Curious George",
		"+14155557775" => "Boots",
		"+14155551234" => "Virgil"
	}

	friends.each do |key, value|
	  client.account.messages.create(
	    :from => from,
	    :to => key,
	    :body => "Hey #{value}, Monkey party at 6PM. Bring Bananas!"
	  )
	  puts "Sent message to #{value}"
	end
end
