import Foundation

//1. Write a Swift program to check if two given arrays of integers have 0 as their first element.
//произвести проверку двух массивов(Int) являются ли их первые элементы нулями и вывести соответствующее сообщение в консоль.

func checkFirstElement (array1: [Int], array2: [Int]) {
    if array1[0] == 0 && array2[0] == 0 {
        print ("Первые элементы массивов являются нулями")
    } else if array1[0] == 0 || array2[0] == 0 {
        print("Первый элемент только одного массива равен нулю")
    } else { print("Первые элементы обоих массивов не являются нулями") }
}

let array1 = [0, 4, 5, 5, 7, 8]
let array2 = [4, 9, 8, 3, 7, 2]
let array3 = [0, 9, 2, 7, 0]

checkFirstElement(array1: array1, array2: array2)
checkFirstElement(array1: array1, array2: array3)

//2. Write a Swift program to test if an array of integers does not contain a 3 or a 5.
//произвести проверку двух массивов(Int) на отсутствие в них элементов 3 и 5 и вывести соответствующее сообщение в консоль

//Вариант 1
func checkingArray (array1: [Int], array2: [Int]) {
    var check1Array: Bool = false
    var check2Array: Bool = false
    for i in array1 {
        if i == 3 || i == 5 {
            check1Array = true
        }
    }
    for i in array2 {
        if i == 3 || i == 5 {
            check2Array = true
        }
    }
    
    if check1Array == false && check2Array == false {
        print("Оба массива не содержат 3 и 5")
    } else if check1Array == true && check2Array == true {
        print("Оба массива содержат 3 и/или 5")
    } else if check1Array == true || check2Array == true {
        print("Один их массивов содержит 3 и/или 5")
    } else { print ("Ни один из массивов не содержит 3 или 5")}
}

checkingArray(array1: array1, array2: array2)
checkingArray(array1: array3, array2: array2)

//Вариант 2

func checkingArray2 (array1: [Int], array2: [Int]) {
    if array1.contains(3) || array1.contains(5) || array1.contains(3) || array2.contains(5) {
        print ("В массивах содержатся 3 и/или 5")
    } else { print("Массивы не содержат 3 и 5")}
}


//3. Write a Swift program to check whether the first element and the last element of a given array of integers are equal.
//произвести проверку одинаковы ли первый и последний элементы данного массива(Int) и вывести соответствующее сообщение в консоль

func checkFirstAndLast (array: [Int]) {
    if array.first == array.last {
        print("Первый и последний элементы массива равны")
    } else { print("Первый и последний элементы массива не равны")}
}

checkFirstAndLast(array: array3)
checkFirstAndLast(array: array2)


//4. Write a Swift program that creates Array, adds an item, remove item, modify item and then prints size of the array.
//проинициализировать массив, добавить в него элемент, удалить элемент, модифицировать какой-нибудь элемент и вывести в консоль размер массива(количество элементов)

var testArray = ["skjsd", "kj", "lkjknd", "nklskd", "7438"]

testArray.append("asddf")
testArray.remove(at: 3)
testArray[4] = "00000"

print(testArray.count)


//5. Write a Swift program that creates Dictionary, adds an item, remove item, modify item and then prints size of the Dictionary.
//проинициализировать словарь, добавить в него элемент, удалить элемент, модифицировать какой-нибудь элемент и вывести в консоль размер словаря(количество элементов)

var testDictionary = [
    "a": 1,
    "b": 2,
    "c": 3,
    "d": 4,
    "e": 5,
]

testDictionary["f"] = 6
testDictionary["c"] = nil
testDictionary["d"] = 18

print(testDictionary)
print(testDictionary.count)

//6. Write a Swift program that creates Set, adds an item and then prints size of the Set.
////проинициализировать Сет, добавить в него элемент и вывести в консоль размер Сета(количество элементов)

var testSet: Set<Int> = [8, 3, 0, 0, 2, 6, 4, 5]
testSet.insert(98)
print(testSet)
print(testSet.count)

//7. Create 2 arrays, and merge them.
//проинициализировать 2 массива и объединить(можно в новом массиве)

let firstArray = [23,4242,2323,203,109,909]
let secondArray = [786,98,2322,154,9]

var combined = firstArray+secondArray
print(combined)

//8. Write a closure to sum 2 integers, pass closure as argument to function, where return the result of calling that closure.
//Написать замыкание(closure), задача которого складывать 2 полученных аргумента типа Int и вернуть его и вывести в консоль.

func firstClosure(arg1: Int, arg2: Int, closure: (Int, Int) -> Void) {
    closure(arg1, arg2)
}
let closure: (Int, Int) -> Void = {
    print("Сумма двух аргументов равнв \($0 + $1)")
}
firstClosure(arg1: 17, arg2: 13, closure: closure)

//9. Подготовить примры:
// array.map(<#T##transform: (Int) throws -> T##(Int) throws -> T#>)
// array.filter(<#T##isIncluded: (Int) throws -> Bool##(Int) throws -> Bool#>)
