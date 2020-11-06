class Fighter
    attr_accessor :name
    attr_accessor :defense
    attr_accessor :strength
    attr_accessor :luck
    attr_accessor :life

    def initialize(name, defense, strength, luck, life)
        @name = name
        @defense = defense
        @strength = strength
        @luck = luck
        @life = life
    end

    def attack(opp)
        damage = @strength - opp.defense
        if damage <= 0
            puts "#{@name} could not do damage to #{opp.name}"
        else
            opp.life = opp.life - damage
            puts "#{opp.name} took #{damage} damage and now has #{opp.life} life left"
        end
    end

end
