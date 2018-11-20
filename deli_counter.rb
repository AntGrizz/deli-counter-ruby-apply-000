katz_deli = [55, 49, 70]
other_deli = ["Logan", "Avi", "Spencer"] 
another_deli = ["Amanda", "Annette", "Ruchi", "Jason", "Logan", "Spencer", "Avi", "Joe", "Rachel", "Lindsey"] 


def line(deli)
  if deli.count > 0
    output = "The line is currently:"
    deli.each_with_index do |name, index|
      output << " #{index +1}. #{name}"
    end
    puts output
  else
    puts "The line is currently empty."
  end
end

last_number_out = 0

def take_a_number(deli)
 new_customer = last_number_out + 1
  deli.push(new_customer)
  puts "Hi ticket number #{deli[-1]}, there are #{deli.count} people in line."
  last_number_out = new_customer
end

def now_serving(deli)
  if deli.count > 0
    output = "Currently serving #{deli.shift}."
    puts output
  else
    puts "There is nobody waiting to be served!"
  end
end


def ticket_machine(deli, index)
  deli.push(index)
  puts 