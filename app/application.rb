class application
  def call(env)
    resp = Rack::Response.new



    resp.finish
  end
end
