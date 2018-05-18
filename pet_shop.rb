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
