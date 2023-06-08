//task 21.1

class Person {
    var firstName: String
    var lastName: String
    var fullName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        fullName = "\(firstName) \(lastName)"
    }
}

//task 21.2
// в первом случае решил сделать два инициализатора, а дефолтное значение цвета выставить при объявлении свойства
class Label {
    enum Colors: String {
        case green = "green"
        case blue = "blue"
        case red = "red"
        case white = "white"
        case black = "black"
        case yellow = "yellow"
        case orange = "orange"
    }
    var title: String
    var color: Colors = .green
    
    init(title: String) {
        self.title = title
    }
    
    init(title: String, color: Colors) {
        self.title = title
        self.color = color
    }
}

//во втором случае свойство color уже является необязательным, так как дефолтное значение проставляется в инициализаторе. Также в этом кейсе решил не указывать явно тип данных перечисления
class Label {
    enum Colors {
        case green
        case blue
        case red
        case white
        case black
        case yellow
        case orange
    }
    var title: String
    var color: Colors
    
    init(title: String, color: Colors = .green) {
        self.title = title
        self.color = color
    }
}
