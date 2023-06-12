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

