require './fighter.rb'
require './Dojo.rb'

puts "Welcome to Ruby Dojo, where famous people come to take out their frustration through hand to hand combat."
puts "What's your name? Your opponent wants to know so they can trash talk you."
player_name = gets.chomp
fighter1 = Fighter.new(player_name, 0, 0, 0, 10)

bruce_springsteen = Fighter.new("bruce springsteen", 4, 4, 4, 10)

Dojo.lift_weights(bruce_springsteen)

puts "Your opponent, Bruce Springsteen just got back from a long tour and it did not go well. The E street band was out of tune the whole time and he's very stressed. You have 10 minutes to train. Choose wisely."

1.upto(10) do |minute|
    puts "Minute #{minute}"
    puts "How would you like to train? Type 1 to lift weights, 2 to jump rope, or 3 to hope and pray Bruce ain't what he used to be"
    
    answer = gets.chomp.to_i

    if answer == 1
        Dojo.lift_weights(fighter1)
    elsif answer == 2
        Dojo.endurance_training(fighter1)
    elsif answer == 3
        Dojo.coin_in_fountain(fighter1)
    end

    if minute == 10
        puts "Bruce is tired of waiting. Your 10 minutes are up. Time to fight!"
    end
end

while true
    puts "You take a swing... ka-chow!"
    fighter1.attack(bruce_springsteen)
    puts "Bruce strikes back! Kaplooey!"
    bruce_springsteen.attack(fighter1)
 
    if fighter1.life <= 0 || bruce_springsteen.life <= 0
        if fighter1.life < bruce_springsteen.life
            puts "Bruce wins, obviously."
        else
            puts "#{fighter1.name} you must have been born to run. You won!"
        end
        break
    end
end