def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, money)
  shop[:admin][:total_cash] += money
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, amount)
  shop[:admin][:pets_sold] += amount
end

def stock_count(shop)
return shop[:pets].count
end

def pets_by_breed(shop, breed)

  matching_pets = []

  for animal in shop[:pets]
    if animal[:breed] == breed
      matching_pets.push(animal[:breed])
    end
  end
  return matching_pets
end

def find_pet_by_name(shop, name)
  for critter in shop[:pets]
    if critter[:name] == name
      return critter
    end
  end
  return nil
end

def remove_pet_by_name(shop, name)
pet = find_pet_by_name(shop, name)
shop[:pets].delete(pet)
end

def add_pet_to_stock(shop, nupet)
  shop[:pets].push(nupet)
  stock_count(shop)
end

def customer_cash(customer)
return customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
return customer[:pets].count
end

def add_pet_to_customer(customer, nupet)
  customer[:pets].push(nupet)
end

def customer_can_afford_pet(customer, nupet)

  if customer[:cash] >= nupet[:price]
    return true
  end
  return false
end

# def sell_pet_to_customer(shop, pet, customer)
#   total_pets = customer_pet_count(customer)
#   find_pet_by_name(shop, name)
#
#   customer[:pets].push(shop[:pets].delete(pet))
#   return total_pets + 1
#   increase_pets_sold(shop, 1)
#   remove_customer_cash(customer, amount)
#   total_cash(shop) + pet[:price]
#
#
# end
