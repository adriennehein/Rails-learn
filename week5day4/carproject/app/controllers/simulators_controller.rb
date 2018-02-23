
class SimulatorsController < ApplicationController
  def index
  end

  def simulate
      @car = YAML.load(session[:car])
      @car.car_info
      session[:car] = @car.to_yaml
  end
end
