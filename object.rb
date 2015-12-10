class Automobiles

    def set_brand=(brand)
        @brand = brand
    end
    
    def get_brand
         return @brand
    end
    
    def set_model=(model)
        @model = model
    end
    
    def get_model
        return @model
    end              
end       

class Truck < Automobiles

    def truck_noise
        return "Rumble rumble!!!"
     end
 end    
     
 class SUV < Automobiles
     def SUV_noise
         return "Honk, honk! Let me through!!"  
     end
 end

class Cars < Automobiles

     def car_noise
         return "Vrrooooooom, honk honk, rattle rattle"
     end
end
 my_car = Cars.new
 my_car.set_brand= "Audi"
 car_brand = my_car.get_brand
        
 my_truck = Truck.new
 my_truck.set_brand= "Ford"   
 truck_brand = my_truck.get_brand

 my_SUV = SUV.new
 my_SUV.set_brand= "Toyota"    
 SUV_brand = my_SUV.get_brand

 puts "My #{car_brand} goes #{my_car.car_noise}, my #{truck_brand} goes #{my_truck.truck_noise}, my #{SUV_brand} goes #{my_SUV.SUV_noise}."

puts my_car.inspect
puts my_truck.inspect
puts my_SUV.inspect
