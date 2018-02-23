class Car
    attr_accessor :name, :year, :speed, :lights_status, :ebrake_status
    def initialize(name, year)
        @name = name
        @year = year
        @speed = 0
        @lights = false
        @lights_status = "Off"
        @ebrake = false
        @ebrake_status = "Off"
    end

    def accelerate
        @speed += 10
    end

    def brake
        @speed -= 7
    end

    def lights_change
        @lights = !@lights
        @lights ? @lights_status = "On" : @lights_status = "Off"
    end

    def brake_change
        @ebrake = !@ebrake
        @ebrake ? @ebrake_status = "Set" : @ebrake_status = "Released"
    end

end



# class User
#   def initialize(given, family)
#     @given = given
#     @family = family
#   end
#
#   # To be called in the view
#   def full_name
#     @given + " " + @family
#   end
#
#   # Necessary for YAML
#   def given= new_given
#     @given = new_given
#   end
#
#   def family= new_family
#     @family = new_family
#   end
# end
