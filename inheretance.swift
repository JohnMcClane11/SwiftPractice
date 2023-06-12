// 22.1

class Animal {
    
    let name: String
    let age: Int
    
    func sount() {
        print("издать звук")
    }
    
    func movement() {
        print("передвигаться")
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
}

class Cat: Animal {
    let furType: String
    
    init(fur: String, name: String, age: Int) {
        furType = fur
        super.init(name: name, age: age)
    }
}

// 22.2

let data = ["name": "Бульбазавр",
"image": "bulbasaur.jpg",
"health": "8",
"experience": "11"]

class Character {
    let health: Int
    let experience: Int
    
    init(hp: Int, exp: Int) {
        health = hp
        experience = exp
    }
    
}

class Pokemon: Character {
    let name: String
    let image: String
    
    init(dictionary: [String: String]) {
        name = dictionary["name"] ?? ""
        image = dictionary["image"] ?? ""
        
        let health = Int(dictionary["health"] ?? "") ?? 0
        let experience = Int(dictionary["experience"] ?? "") ?? 0
        super.init(hp: health, exp: experience)
    }
    
}
