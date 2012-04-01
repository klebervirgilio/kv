require 'sinatra/base'

class Casamento < Sinatra::Base
  DAY_IN_SECONDS    = 86400
  DAY_IN_MINUTES    = 1440
  DAY_IN_HOURS      = 24
  HOUR_IN_SECONDS   = 3600
  MINUTE_IN_SECONDS = 60
  
  get '/' do
    @time = time = Time.local(0,30,11,21,4,2012,nil,nil,nil,-3) - Time.now
    @counting = [
      @days     = Integer(time  / DAY_IN_SECONDS    ),
      @hours    = Integer((time / HOUR_IN_SECONDS   ) - (@days * DAY_IN_HOURS)),
      @minutes  = Integer((time / MINUTE_IN_SECONDS ) - (@days * DAY_IN_MINUTES) - (@hours * MINUTE_IN_SECONDS)),
      @seconds  = Integer(time  % MINUTE_IN_SECONDS ),
    ]
    
    erb :app
  end
end