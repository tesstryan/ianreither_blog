class User < ActiveRecord::Base

	has_secure_password

	def twitter
		twitter ||= Twitter::REST::Client.new( :oauth_token => ENV['OAUTH_TOKEN'], :oauth_token_secret => ENV['OAUTH_TOKEN_SECRET'], :consumer_key => ENV['CONSUMER_KEY'], :consumer_secret => ENV['CONSUMER_SECRET'])
	end

  def no_link_tweet
    twitter.user_timeline.first.full_text.dup
  end


end
