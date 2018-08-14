class Car
    def open
    end
  
    def start_engine
    end
  
     def change_engine
     end
  end
  
  class Driver
    def drive
      @car.open
      @car.start_engine
    end
  end
  
  class Mechanic
    def do_stuff
      @car.change_engine
    end
  end
  

  class Car
    def open
    end
  
    def start_engine
    end
  end
  
  class CarInternals
     def change_engine
     end
  end
  
  class Driver
    def drive
      @car.open
      @car.start_engine
    end
  end
  
  class Mechanic
    def do_stuff
      @car_internals.change_engine
    end
  end