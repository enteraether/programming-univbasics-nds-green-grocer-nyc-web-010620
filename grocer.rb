
require 'pry'

def find_item_by_name_in_collection(name, collection)
    binding.pry
#   i = 0
#   while i < collection.length do
#     return collection[i] if name === collection[i][:item]
#     i += 1
#   end
#     nil
# end

i = 0
while i < collection.length do
  if name === collection[i][:name]
    return collection[i]
  else
    nil
  end
  i += 1
end
end



def consolidate_cart(cart)
    # binding.pry
  new_array = []
  i = 0
  while i < cart.length do
    item_name = cart[i][:name]
    sought_item = find_item_by_name_in_collection(item_name, new_array)
    if sought_item
      sought_item[:count] += 1
    else
      cart[i][:count] = 1
      new_array << cart[i]
          end
        i += 1
  end

  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
end

def apply_coupons(cart, coupons)
  # binding.pry
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
