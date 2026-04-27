//MARK: - 1
func greeting(){
    print("Hello, World!")
}
greeting()

func printHi(_ name: String){
    print(" hi, \(name)")
}
printHi("Misha!")

func printHello(_ name: String) -> String{
    "Helo, \(name)!"
}
print(printHello("Misha"))

//MARK: - 2
func sumOfSymbols( first: String, second: String) -> Int {
    var sum = first.count + second.count
    return sum
}
let first = "hello"
let second = "Misha"
print(sumOfSymbols(first: first, second: second))

//MARK: - 3
func squareOfNumber(_ number: Int)->Int{
    let square = number*number
    return square
}
let number = 13
print(squareOfNumber(number))

//MARK: - 4
func areaOfCircle(radius: Double)->Double{
    let Pi = 3.14
    let area = Pi*radius*radius
    return area
}
let radius: Double = 12.5
print(areaOfCircle(radius: radius))

//MARK: - 5
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

//MARK: - 7
func phoneNumber( number: String ){
    let kodeofCountry = String(number.prefix(3))
    print(" код страны: \(kodeofCountry)")
    let afterremain = String(number.dropFirst(3))
    let kodeOfOperator = String(afterremain.prefix(2))
    print(" код оператора: \(kodeOfOperator)")
    let phnumber = String(afterremain.dropFirst(2))
    print(" номер : \(phnumber)")
}
phoneNumber(number: "375291061912")

//MARK: - 8
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
