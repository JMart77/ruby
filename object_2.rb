class Automobiles

    attr_accessor :brand, :model

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
 my_car.brand= "Audi"
 car_brand = my_car.brand
        
 my_truck = Truck.new
 my_truck.brand= "Ford"   
 truck_brand = my_truck.brand

 my_SUV = SUV.new
 my_SUV.brand= "Toyota"    
 SUV_brand = my_SUV.brand

 puts "My #{car_brand} goes #{my_car.car_noise}, my #{truck_brand} goes #{my_truck.truck_noise}, my #{SUV_brand} goes #{my_SUV.SUV_noise}."

puts my_car.inspect
puts my_truck.inspect
puts my_SUV.inspect
