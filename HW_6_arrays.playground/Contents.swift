//: # Задание:
// 1. Описать фцнкцию принимающую 2 аргумента String (word, line), которая с помощью цикла FOR считает сколько раз данное слово встречается в строке line
func accountingWordInLine (word:String, InLine line:String) {
    let arrayLine = Array(line)
    let arrayWord = Array(word)
    var arrayTemp = [Character]()
    let count = arrayWord.count
    var index:Int
    var counter = 0
    
    for i in 0...arrayLine.count-count {
        index = 0
        for k in 0..<count {
            arrayTemp.append(arrayLine[index+i])
            index += 1
        }
        if arrayTemp == arrayWord { counter += 1 }
        arrayTemp.removeAll()
    }
    print ("Слово \"\(word)\" встречается в строке \(counter) раз(а)")
}
accountingWordInLine(word: "qwert", InLine: "qwertjh skdjhfkh hdjqwertjk hkbjqwert")
accountingWordInLine(word: "слово", InLine: "Это слово слово слово встречается в строке слово 4 раза")



// 2. Написать алгоритм с помощью цикла DO-WHILE который добавляет в массив [Int] элементы (можно одинаковые, можно рандомные) до тех пор, пока сумма элементов массива меньше 100
//Вариант 1 - Одинковые
func addToArray (number:Int) {
    var array = [Int]()
    var sum = number
    if number < 100 {
        repeat {
            array.append(number)
            sum += number
        } while sum < 100
        print(array)
    } else { print("The max sum of elements of array is 100! Can't add \(number) to the array. Array is empty") }
}
addToArray(number: 17)
addToArray(number: 50)
addToArray(number: 101)

//Вариант 2 - Рандомные
func addToArray2 () {
    var array = [Int]()
    var sum = 0
    repeat {
        array.append(Int.random(in: 0..<(100-sum)))  //Чтобы сумма с последним элементом не была больше 100, всегда добавляем в промежутке до 100-sum
        for element in array {
            sum += element
        }
    } while sum < 100
    print(array)
}
addToArray2 ()



// 3. Написать 1 алгоритм сортировки элементов массива [Int]
var array = [Int]()
for element in 1...10 {
    array.append(Int.random(in: 0...100))
}
print(array)
for i in array.enumerated() {
    var min = i.offset
    var index = i.offset+1
    while index < array.count {
        if array[min] > array[index] {
            min = index
        }
        index += 1
    }
    if i.offset != min {
        array.swapAt(i.offset, min)
    }
}
print(array)
