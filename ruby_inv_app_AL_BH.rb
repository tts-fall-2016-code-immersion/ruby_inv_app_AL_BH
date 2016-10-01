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
                item_arr[i][val] = update_val
                puts "#{key} inventory updated to #{val}"
            end
        end
    end
end

def activity_loop(item_arr,action_arr)
    exit = 0
    while exit == 0
        puts "What would you like to do? (view, update, add, remove, quit)"
        response = gets.chomp.downcase
        if response == "view"
            view_inv(item_arr)
        elsif response == "update"
            update_inv(item_arr)
        elsif response == "add"
            #Add add method
        elsif response == "remove"
            #Add remove method
        elsif response == "quit"
            puts "Have a nice day!"
            exit = 1
        else
            puts "Not a valid input, please try again."
        end
    end
end

activity_loop(item_arr, action_arr)