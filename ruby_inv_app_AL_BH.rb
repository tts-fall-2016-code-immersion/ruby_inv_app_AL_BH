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

def view_inv(beer_arr)
    puts "Curent Inventory:"
    beer_arr.each do |beer|
        beer.each_pair do |name, qty|
            puts "#{name}: #{qty}"
        end
    end
end

view_inv(beer_arr)