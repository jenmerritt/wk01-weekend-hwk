# get shop name

def pet_shop_name(shop)
  return shop[:name]
end

# get total cash in shop from admin hash

def total_cash(shop)
  return shop[:admin][:total_cash]
end

# add or remove cash from shop total in admin hash

def add_or_remove_cash(shop, amount_to_add_or_remove)
  shop[:admin][:total_cash] += amount_to_add_or_remove
end

# get number of pets sold by shop from admin hash

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

# incraese the number of pets sold in admin hash

def increase_pets_sold(shop, pets_sold)
  shop[:admin][:pets_sold] += pets_sold
end

# count items in pets array to take stock count

def stock_count(shop)
  return shop[:pets].count
end

# find pets by breed and return array of names of pets found for that breed

def pets_by_breed(shop, breed_to_find)
  pets_found = []
  for pet in shop[:pets]
    if pet[:breed] == breed_to_find
      pets_found.push(pet[:name])
    end
  end
  return pets_found
end

# find pets by name and return hash of pets found

def find_pet_by_name(shop, name_to_find)
  for pet in shop[:pets]
    if pet[:name] == name_to_find
      pet_name = { name: name_to_find }
    end
  end
  return pet_name
end

# remove a specific pet from the pets array by name

def remove_pet_by_name(shop, name_to_remove)
  for pet in shop[:pets]
    if pet[:name] == name_to_remove
      shop[:pets].delete(pet)
    end
  end
end

# add a new pet (hash) as new item in pets array

def add_pet_to_stock(shop, new_pet)
  shop[:pets] << new_pet
end

# return how much cash a specific customer has

def customer_cash(customer)
  return customer[:cash]
end

# reduce cash of a specific customer by given amount

def remove_customer_cash(customer, cash_to_remove)
  customer[:cash] -= cash_to_remove
end

# return number of pets a specific customer has

def customer_pet_count(customer)
  customer[:pets].count
end

# add a new pet to a customers pets array

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

# optional
# check customer cash amount against price of pet to see if customer can afford pet, return true/false.

def customer_can_afford_pet(customer, pet)
  if customer[:cash] >= pet[:price]
    return true
  else
    return false
  end
end
