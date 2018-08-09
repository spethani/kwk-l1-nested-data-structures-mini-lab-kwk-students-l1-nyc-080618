# example ingredients array
ingredients = [
    ["rye", "sourdough", "baguette"],
    ["ham", "salami", "turkey"],
    ["swiss", "munster", "cheddar"],
    ["mayo", "mustard", "tabasco"]
]

def sandwich_request(ingredients, order) 
  # your code here!
  is_it_there=true
  
  order.each do |item|
    
    #Set a variable found equal to false, means order item not found in the ingredients array yet
    found=false
    
    ingredients.each do |array|
      array.each do |ingredient|
        #if the item is the same as the ingredient in the ingredients array, you have found the item
        if(item==ingredient)
          found=true
        end
        
      end
    end
    
    if(!found)
      is_it_there=false
    end
    
  end
  
  return is_it_there
  
end

# example city_info hash
cities = {
  :new_york => { 
    :mayor => "Bill DeBlasio",
    :population => 8337000,
    :website => "http://www.nyc.gov"
  },
  :los_angeles => { 
    :mayor => "Eric Garcetti",
    :population => 3884307,
    :website => "http://www.lacity.org"
  },
  :miami => { 
    :mayor => "Tomás Regalado",
    :population => 419777,
    :website => "http://www.miamigov.com"
  },
  :chicago => { 
    :mayor => "Rahm Emanuel",
    :population => 2695598,
    :website => "http://www.cityofchicago.org/"
  }
}

def city_populations(cities)
  # your code here!
  total_pop = 0
  cities.each do |city, info|
    total_pop = info[:population]
  end
  
  return total_pop
end
