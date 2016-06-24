class Application
	def call(env)
		resp = Rack::Response.new

		now = Time.now

		if now.hour - 12 >= 0
			resp.write "Good Afternoon!"
		else
			resp.write "Good Morning!"
		end

		resp.finish
	end
end
