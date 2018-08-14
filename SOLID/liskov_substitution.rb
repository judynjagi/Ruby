class Animal
    def walk
       do_some_walkin
    end
  end
  
  class Cat < Animal
    def run
      run_like_a_cat
    end
  end

  class Animal
    def walk
       do_some_walkin
    end
  
    def run
      raise NotImplementedError
    end
  end
  
  class Cat < Animal
    def run
      run_like_a_cat
    end
  end