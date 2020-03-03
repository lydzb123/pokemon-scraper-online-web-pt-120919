class Pokemon

    attr_accessor :id, :name, :type, :db

    def initialize(keywords)
    end

    def self.save(name, type, db)
        db.execute("INSERT INTO pokemon (name, type)
        VALUES (?, ?)", name, type)
    end
    
    def self.find(id, db) #what is db referencing here?
        pokemon = db.execute("SELECT * FROM pokemon WHERE id=?", [id])
        new_pokemon = self.new(pokemon)
        new_pokemon.id = pokemon[0][0]
        new_pokemon.name = pokemon[0][1]
        new_pokemon.type = pokemon[0][2]
        new_pokemon
    end



end
