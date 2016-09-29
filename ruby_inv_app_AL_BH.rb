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

def view_inv(beer_hsh)
    puts "Curent Inventory:"
    beer_hsh.each do |beer|
        puts "#{beer[:name]}"
    end
end

view_inv(beer_hsh)