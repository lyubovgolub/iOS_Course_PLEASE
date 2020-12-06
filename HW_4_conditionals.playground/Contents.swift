// Написать ряд функций одного объекта:
// 1. Функция принимающая 2 аргумента типа Int, сравнивает их значения и выводит в консоль результат сравнения в виде: "Аргумент 1 больше, чем Аргумент 2".

//Вариант 1
func compare (_ firstNumber:Int, _ secondNumber:Int) {
    var minNumber:Int
    var maxNumber: Int
    if (firstNumber>secondNumber){
        maxNumber=firstNumber
        minNumber=secondNumber
    } else if (firstNumber<secondNumber) {
        maxNumber=secondNumber
        minNumber=firstNumber
    } else {
        minNumber=firstNumber
        maxNumber=secondNumber
    }
    if maxNumber>minNumber {
        print("\(maxNumber) больше, чем \(minNumber)")
    } else {
        print("Аргументы равны")
    }
}
compare(30, 18)
compare(30, 30)
compare(30, 50)

//Вариант 2
func compare2 (_ firstNumber:Int, _ secondNumber:Int) {
    if (firstNumber>secondNumber){
        print("Аргумент 1 больше, чем Аргумент 2")
    } else if (firstNumber<secondNumber) {
        print("Аргумент 2 больше, чем Аргумент 1")
    } else {
         print("Аргументы равны")
    }

}
compare2(30, 18)
compare2(30, 30)
compare2(30, 50)

// 2. Функция получает 3 аргумента, если среди них хотя бы 2 аргумента равны, то выводит ответ в виде: "2 аргумента равны", противном случае выдать ответ "равных аргументов нет".


func compare3 (_ first:Int, _ second:Int, _ third:Int) {
    if(first == second) && (second == third) {
    print("3 аргумента равны")
    } else if (first == second) || (first == third) || (second == third){
        print("2 аргумента равны")
    } else {
        print ("Равных аргументов нет")
    }
}
compare3 (2, 4, 3)
compare3 (2, 4, 2)
compare3 (2, 2, 2)

// 3. Функция получает опциональный Int аргумент, затем проверяет ее на nil: если есть значение - выводит его в консоль, если нет - выводит фразу "no value"
func optionals (_ arg:Int?) {
    if arg != nil {
        print (arg)
    } else {
        print ("No value")
    }
}
optionals (Int("kkhk"))
