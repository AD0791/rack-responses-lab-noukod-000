class application
  def call(env)
    resp = Rack::Response.new

    time =  Kernel.rand(1..24)
    resp.write("The current time is: #{time}")

    
    resp.finish
  end
end
