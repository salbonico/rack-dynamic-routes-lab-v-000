require 'pry'
class Application



  def call(env)
      resp = Rack::Response.new
      req = Rack::Request.new(env)

        if req.path.match(/items/)
         item = req.path.split(/items/).last
         item[0] = ""
         testinput = @@items.detect(|f| f.name == item)
          binding.pry
        else
          resp.write "Route not found"
          resp.status = 404
        end
      resp.finish
  end
end
