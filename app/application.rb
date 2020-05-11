class Application
    
    def call(env)
        return [200, {'Content-Type' => 'text/html'}, pretty_response]
    end 
    
    def pretty_response
        Time.now.hour < 12 ? ["<em>Good Morning</em>"] : ["<em>Good Afternoon</em>"]
    end 

end

# class Application 
#     def call(env)
#         resp = Rack::Response.new

#         Time.now.hour < 12 ? resp.write "Good Morning" ? resp.write "Good Afternoon"

#         resp.finish
#     end 
# end 
