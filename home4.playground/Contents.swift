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
