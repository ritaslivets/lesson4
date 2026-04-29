//MARK: - 1
// TODO: - Нужен пробел перед фигурнйо скобкой
func greeting(){
    print("Hello, World!")
}
greeting()

// TODO: - Нужен пробел перед фигурнйо скобкой
func printHi(_ name: String){
    print(" hi, \(name)")
}
printHi("Misha!")

// TODO: - Нужен пробел перед фигурнйо скобкой
func printHello(_ name: String) -> String{
    "Helo, \(name)!"
}
print(printHello("Misha"))

//MARK: - 2
// TODO: - НЕ Нужен пробел после обычной скобки
func sumOfSymbols( first: String, second: String) -> Int {
    var sum = first.count + second.count
    return sum
}
let first = "hello"
let second = "Misha"
print(sumOfSymbols(first: first, second: second))

//MARK: - 3
// TODO: - Пробелы между -> и перед фигурной скобкой
func squareOfNumber(_ number: Int)->Int{
    // TODO: - Пробелы между арифмитескими знаками
    let square = number*number
    return square
}
let number = 13
print(squareOfNumber(number))

//MARK: - 4
// TODO: - Пробелы. И навзщние фцнкции должно содержать глагол.
func areaOfCircle(radius: Double)->Double{
    // TODO: - Навзания пермеенных всегда с маленькой буквы
    let Pi = 3.14
    let area = Pi*radius*radius
    return area
}
let radius: Double = 12.5
print(areaOfCircle(radius: radius))

//MARK: - 5
// TODO: - Пробел и глагол. Если ввести число 23 то выведет некорректно условие. Ну и по хорошему немного бы поменять условие в else if. Он овключает и промежутки из первого условия. По хорошему должны быть конкртено только те, которые отвечают за ночь.
func dayOrNight(time: Int){
    if time >= 6 && time < 22{
        print("Сейчас день!")
    } else if time <= 22 && time >= 0 || time == 24 {
        print("Сейчас ночь!")
    } else {
        print("неккоректно введенно время!")
    }
    //if time < 0 || time > 24 {
       // print("неккоректно введенно время!")
    //} else if time >= 6 && time < 22{
    //    print("Сейчас день!")
   // } else {
      //  print("Сейчас ночь!")
   // }
}
dayOrNight(time: 6)

//MARK: - 6
/* TODO: - Глагол. 
    Не ошибка, но можно делать без переменной period. А сразу использовать return внутри блоков if else if
    Попробуй решить еще задачу с помощью switch case.
*/
func timeOfYear(month: Int) -> String {
    let period: String
    if month >= 1 && month <= 2 || month == 12 {
        period = " winter"
    } else if month >= 3 && month <= 5 {
        period = " spring "
    } else if  month >= 6 && month <= 8 {
        period = " summer"
    } else if month >= 9 && month <= 11 {
        period = " fall "
    } else {
        period = " неккоректно введенно время!"
    }
    return period
}
print(timeOfYear(month: 8))

 // TODO: - Нейминг переменных
//MARK: - 7
func phoneNumber( number: String ){
    // TODO: - let codeOfCountry или даже лучше let countryCode
    let kodeofCountry = String(number.prefix(3))
    print(" код страны: \(kodeofCountry)")
     // TODO: - let phoneWithoutCode
    let afterremain = String(number.dropFirst(3))
    // TODO: - let operatorCode
    let kodeOfOperator = String(afterremain.prefix(2))
    print(" код оператора: \(kodeOfOperator)")
     // TODO: - let phoneNumber
    let phnumber = String(afterremain.dropFirst(2))
    print(" номер : \(phnumber)")
}
phoneNumber(number: "375291061912")

//MARK: - 8
// MARK: - Интересное решение)))
func isSimple(number: Int)-> Bool{
    func divisor(div: Int) -> Bool {
        if div * div > number{
            return true
        } else if number % div == 0{
            return false
        }
        return divisor( div:div + 1)
    }
    if number <= 0 || number >= 100{
        return false
    } else if number <= 2{
        return false 
    }
    return divisor(div:2)
}
print(isSimple(number: 1))

//MARK: - 9
func countFactorial( number: Int) -> Int {
    if number < 0 {
        return 0
    }
    if number == 1 {
        return 1
    }
      return number * countFactorial(number: number-1)
}
print(countFactorial(number:5))

//MARK: - 10
// TODO: - пробел
func printFib(index: Int){
    if index <= 0 {
        return
    }
    // TODO: - отступы поехали. Надо подвинуть левее всю функцию
    // TODO: - пробелы
        func fib( n: Int)-> Int{
            if n == 0 {
                return 0
            // TODO: - пробел
            }else if n == 1 {
                return 1
            }
            return fib(n:n - 1 ) + fib(n:n - 2 )
        }
    for i in 0...index {
        // TODO: - пробел
        print ( fib(n: i), terminator: i == index ? "\n" : ",")
    }
}
printFib(index: 6)

//MARK: - 11
func countSum(number: Int) -> Int {
    if number < 1000 || number > 9999 {
        print ("Введите 4-х значное число!")
        return 0
    }
    // TODO: - пробелы между математическими знаками
    let sum = number/1000 + ((number/100) % 10) + ((number/10) % 10) + number % 10
    return sum
}
print(countSum(number: 1234))
