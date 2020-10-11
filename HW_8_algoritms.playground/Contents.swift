//пересекаются ли два прямоугольника
print("Задайте прямоугольники 4мя значениями: Xmin, Ymin, Xmax, Ymax")

func intersectionOfRectangles (rect1: [Int], rect2: [Int]) -> Bool {
    return !(rect1[2] < rect2[0] || rect1[0] > rect2[2] || rect1[1] > rect2[3] || rect1[3] < rect2[1] )
}
let rect2 = [3, 5, 10, 8]
let rect1 = [7, 6, 12, 20]


print (intersectionOfRectangles(rect1: rect2, rect2: rect1))

//сортировка слиянием
func mergeSort (_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    
    let leftSize = array.count/2
    let leftArray = mergeSort(Array(array[0..<leftSize]))
    let rightArray = mergeSort(Array(array[leftSize..<array.count]))
    
    return merge (leftArray: leftArray, rightArray: rightArray)
}

func merge (leftArray: [Int], rightArray: [Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    var array: [Int] = []
    
    while leftIndex < leftArray.count && rightIndex < rightArray.count {
      let leftElement = leftArray[leftIndex]
      let rightElement = rightArray[rightIndex]

      if leftElement < rightElement {
        array.append(leftElement)
        leftIndex += 1
      } else if leftElement > rightElement {
        array.append(rightElement)
        rightIndex += 1
      } else {
        array.append(leftElement)
        leftIndex += 1
        array.append(rightElement)
        rightIndex += 1
      }
    }

    while leftIndex < leftArray.count {
      array.append(leftArray[leftIndex])
      leftIndex += 1
    }

    while rightIndex < rightArray.count {
      array.append(rightArray[rightIndex])
      rightIndex += 1
    }
    
    return array
}
var array = [111,0,12,23,234,23,25,4537,58,769,789,6,53,2,1,0,111,44,88,45]
let result = mergeSort(array)
print (result)
