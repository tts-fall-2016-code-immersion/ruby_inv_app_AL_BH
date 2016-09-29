# AL_BH Inventory App
# Using Small Batch beers for items

beer_arr = [
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

def view_inv(beer_arr)
    puts "Curent Inventory:"
    beer_arr.each do |beer|
        beer.each_pair do |name, qty|
            puts "#{name}: #{qty}"
        end
    end
end


def activity_loop(beer_arr,action_arr)
    exit = 0
    while exit == 0
        puts "What would you like to do? (view, update, add, remove, quit)"
        response = gets.chomp.downcase
        if response == "view"
            view_inv(beer_arr)
        elsif response == "update"
            #Add update method
        elsif response == "add"
            #Add add method
        elsif response == "remove"
            #Add remove method
        elsif response == "quit"
            puts "Have a nice day!"
            exit = 1
        else
            "Not a valid input, please enter again. (view, update, add, remove, quit)"
        end
    end
end


activity_loop(beer_arr, action_arr)