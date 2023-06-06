import Foundation

//ниже создается структура адреса квартиы
struct AddressApartment {
    var city: String?
    var street: String?
    var streetNumber: Int?
    var floor: Int?
    var apartmentNumber: Int?
}

//ниже класс человека
class Person {
    
    var id: Int?
    var name: String?
    var surname: String?
    var age: Int?
    var address: AddressApartment?
    
    init (id: Int?, name: String?, surname: String?, age: Int?, address: AddressApartment?) {
        self.id = id
        self.name = name
        self.surname = surname
        self.age = age
        self.address = address
    }
    
}

//класс, который содержит в себе метод генерации человека
class Generator {
    
    //пустое множество для будущего сбора в него экземпляров людей
    static var array: [Person] = []
    
    // функция для генерации случайного строкового значения
    static func randomString() -> String {
        let characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let randomCharacters = (0..<30).compactMap { _ in characters.randomElement() }
        return String(randomCharacters)
    }
    
    // метод ниже генерирует случайного человека со случайными свойствами (кроме id)
    static func makePerson(id: Int) -> Person {
        let person = Person(
            id: id,
            name: Int.random(in: 1...3) < 3 ? randomString() : nil,
            surname: Int.random(in: 1...3) < 3 ? randomString() : nil,
            age: Int.random(in: 1...3) < 3 ? Int.random(in: 1...100) : nil,
            address: AddressApartment(
                city: Int.random(in: 1...3) < 3 ? randomString() : nil,
                street: Int.random(in: 1...3) < 3 ? randomString() : nil,
                streetNumber: Int.random(in: 1...3) < 3 ? Int.random(in: 1...100) : nil,
                floor: Int.random(in: 1...3) < 3 ? Int.random(in: 1...20) : nil,
                apartmentNumber: Int.random(in: 1...3) < 3 ? Int.random(in: 1...200) : nil))
        return person
    }
    
    //метод, в котором вложенный цикл на вход получается число, равное количеству людей, которое будет сгенерировано и добавлено в множество
    static func makePersonArray(count: Int) -> [Person] {
        for id in 1...count {
            let person = makePerson(id: id)
            array.append(person)
        }
        return array
    }
    
}

//класс выводит в консоль соответствующее сообщение, если внутри экземпляра есть пустое свойство
class Checker {
    
    static func elementsChecking(arrayAgain: [Person]) {
        for i in 0..<arrayAgain.count {
            //создаю текстовую переменную, в которую буду собирать сообщение для консоли
            var text: String = "Экземпляр \(arrayAgain[i].id!) имеет пустые поля:"
            if arrayAgain[i].name == nil {
                text += " name;"
            }
            if arrayAgain[i].surname == nil {
                text += " surname;"
            }
            if arrayAgain[i].age == nil {
                text += " age;"
            }
            if arrayAgain[i].address!.city == nil {
                text += " city;"
            }
            if arrayAgain[i].address!.street == nil {
                text += " street;"
            }
            if arrayAgain[i].address!.streetNumber == nil {
                text += " street number;"
            }
            if arrayAgain[i].address!.floor == nil {
                text += " floor;"
            }
            if arrayAgain[i].address!.apartmentNumber == nil {
                text += " apartment number;"
            }
            if arrayAgain[i].name != nil && arrayAgain[i].surname != nil && arrayAgain[i].age != nil && arrayAgain[i].address!.city != nil && arrayAgain[i].address!.street != nil && arrayAgain[i].address!.streetNumber != nil && arrayAgain[i].address!.floor != nil && arrayAgain[i].address!.apartmentNumber != nil {
                text = "Экземпляр \(arrayAgain[i].id!) не имеет пустых полей"
            }
            print(text)
        }
    }
}
/* в первой переменной с помощью метода создается множество со сгенерированными людьми
во второй переменной проверяются поля со значением nil */
var testFirst = Generator.makePersonArray(count: 20)
var testSecond = Checker.elementsChecking(arrayAgain: testFirst)
