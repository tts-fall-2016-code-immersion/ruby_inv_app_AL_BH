# AL_BH Inventory App
# Using Small Batch beers for items

item_arr = [
    {"Mr. Lemon Man" => 10}, 
    {"Player to be Named Later" => 20}, 
    {"Hefe Vice Wheat" => 30}, 
    {"Percolator Mocha Stout" => 40}, 
    {"Oktoberfest"=> 50}, 
    {"Purple Drank Blackberry Saison" => 60}, 
    {"Nit Wit"=> 70}, 
    {"White Walker IPA" => 80},
    {"The Beet Gose On" => 90}, 
    {"Double Shot Percolator" => 100}, 
    {"Queen Cersei Blonde" => 110}, 
    {"Arsenal Brown Ale" => 120}]

action_arr = ["view", "update", "add", "remove"]

def view_inv(item_arr)
    puts "Curent Inventory:"
    item_arr.each do |item|
        item.each_pair do |name, qty|
            puts "#{name}: #{qty}"
        end
    end
    return nil
end

def update_inv(item_arr)
    puts "Update which item?"
    view_inv(item_arr)
    update = gets.chomp
    puts "What is the new value?"
    update_val = gets.chomp.to_i
    item_arr.each_with_index do |item, i|
        item.each_pair do |key, val|
            if key == update
                item_arr[i][key] = update_val
                puts "#{key} inventory updated to #{item_arr[i][key]}"
            end
        end
    end
    return item_arr
end

def add_inv()
    puts "Name of new item?"
    add_name = gets.chomp
    puts "Inventory of #{add_name}?"
    add_val = gets.chomp.to_i
    add_hsh = {add_name => add_val}
    return add_hsh
end

def remove_inv(item_arr)
    puts "Remove which item?"
    view_inv(item_arr)
    remove_name = gets.chomp
    item_arr.each_with_index do |item,i|
        item.each_pair do |key, val|
            if key == remove_name
                puts "#{remove_name} has been deleted."
                item_arr.delete_at(i)
            end
        end
    end
    return item_arr
end

def activity_loop(item_arr,action_arr)
    exit = 0
    while exit == 0
        puts "What would you like to do? (view, update, add, remove, quit)"
        response = gets.chomp.downcase
        if response == "view"
            view_inv(item_arr)
        elsif response == "update"
            item_arr = update_inv(item_arr)
        elsif response == "add"
            item_arr.push(add_inv()) 
        elsif response == "remove"
            item_arr = remove_inv(item_arr)
        elsif response == "quit"
            puts "Have a nice day!"
            exit = 1
        else
            puts "Not a valid input, please try again."
        end
    end
end

activity_loop(item_arr, action_arr)