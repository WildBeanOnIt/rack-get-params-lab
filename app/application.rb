# class Application

#   @@items = ["apples","carrots","pears","Carrots", "nike dunks"]
#   @@cart = []

#   def call(env)
#     resp = Rack::Response.new
#     req = Rack::Request.new(env)
#     #items seach bar
#     if req.path.match(/items/)
#       @@items.each do |item|
#         resp.write "#{item}\n"
#       end

#     elsif req.path.match(/search/)
#       search_term = req.params["q"]
#       resp.write handle_search(search_term)
#       #cart search bar
#     elsif req.path.match(/cart/)
#       if @@cart.empty?
#         resp.write "Your cart is empty"
#       else 
#         @@cart.each do |cart|
#           resp.write "#{cart}\n"
#         end
#       end

#     elsif req.path.match(/add/)
#       item = req.params["item"]
#       if @@items.include?(item)
#         @@cart << item
#         resp.write "added #{item}"
#       else
#         resp.write "We don't have that item"
#       end

#     else
#       resp.write "Path Not Found"
#     end

#     resp.finish
#   end

#   def handle_search(search_term)
#     if @@items.include?(search_term)
#       return "#{search_term} is one of our items"
#     else
#       return "Couldn't find #{search_term}"
#     end
#   end
# end

# class Application

#     @@items = ["Apples","Carrots","Pears"]
#     @@carts = ["Nike","Shoes","Food"]
  
#     def call(env)
#       resp = Rack::Response.new
#       req = Rack::Request.new(env)
  
#       if req.path.match(/items/)
#         @@items.each do |item|
#           resp.write "#{item}\n"
#         end
#       elsif req.path.match(/search/)
  
#         search_term = req.params["q"]
  
#         if @@items.include?(search_term)
#           resp.write "#{search_term} is one of our items"
#         else
#           resp.write "Couldn't find #{search_term}"
#         end
  
#       else
#         resp.write "Path Not Found"
#       end
  
#       resp.finish
#     end
#   end

class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/songs"
      resp.write "You requested the songs"
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end