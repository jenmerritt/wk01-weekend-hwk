def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount_to_add_or_remove)
  shop[:admin][:total_cash] += amount_to_add_or_remove
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, pets_sold)
  shop[:admin][:pets_sold] += pets_sold
end

def stock_count(shop)
  return shop[:pets].count
end

def pets_by_breed(shop, breed_to_find)
  pets_found = []
  for pet in shop[:pets]
    if pet[:breed] == breed_to_find
      pets_found.push(1)
    end
  end
  return pets_found
end

def find_pet_by_name(shop, name_to_find)
  for pet in shop[:pets]
    if pet[:name] == name_to_find
      pet_name = { name: name_to_find }
    end
  end
  return pet_name
end

def remove_pet_by_name(shop, name_to_remove)
  for pet in shop[:pets]
    if pet[:name] == name_to_remove
      shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets] << new_pet
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash_to_remove)
  customer[:cash] -= cash_to_remove
end

def customer_pet_count(customer)
  customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end
