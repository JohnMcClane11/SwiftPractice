// task 11.1
//задаем множество согласно условию
var first: Set = [1, 2, 3, 4, 5]
//переменная содержит в себе рандомное число от 1 до 10
let randomNumber = Int.random(in: 1...10)
// метод insert возвращает нам кортеж, где первым элементом является логическое значение, а вторым число, которое добавили во множество
var tuple = first.insert(randomNumber)
if tuple.0 {
    print("Item \(randomNumber) added to collection")
} else {
    print("Item \(randomNumber) already exists")
}

// решил сделать функцию, которая будет на вход принимать множество и выводить в консоль есть ли случайное число во множестве или нет
func tupleTest(set: Set<Int>) {
    var randomNumber = Int.random(in: 1...10)
    var test = set
    var tuple = test.insert(randomNumber)
    tuple.0 ? print("Item \(randomNumber) added to collection") : print("Item \(randomNumber) already exists")
}

var someSet: Set = [1, 2, 3, 4, 5]
var test = tupleTest(set: someSet)


//tasl 11.2
let numbers = (1, 2.2, 3)
var reversedNumbers = (numbers.2, numbers.1, numbers.0)
