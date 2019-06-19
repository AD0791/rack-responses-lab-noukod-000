class Application
  def call(env)
    resp = Rack::Response.new

    time =  Kernel.rand(1..24)
    resp.write("The current time is: #{time}")

    if time.between?(12,18)
      resp.write("Good Afternoon!")
    elsif time.between?(19,24)
      resp.write("Good Night")
    else
      resp.write("Good Moring!")
    end
      
    resp.finish
  end
end
