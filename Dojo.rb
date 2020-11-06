class Dojo
    def self.lift_weights(fighter)
        fighter.strength += 1
        puts "#{fighter.name} strength increased by 1 to #{fighter.strength}"
    end

    def self.endurance_training(fighter)
        fighter.defense += 1
        puts "#{fighter.name} defense increased by 1 to #{fighter.defense}"
    end
    
    def self.coin_in_fountain(fighter)
        fighter.luck += 1
        puts "#{fighter.name} luck increased by 1 to #{fighter.luck}"
    end
end