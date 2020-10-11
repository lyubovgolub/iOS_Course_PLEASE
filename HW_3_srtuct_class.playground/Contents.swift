import Foundation

class Food {                            //Родительский класс Продукты питания с параметрами имени, веса, кбжу
    var name: String
    var weight: Double
    var kkal: Int
    var proteins: Int
    var fats: Int
    var carbs: Int
    
    init (name:String, weight: Double, kkal: Int, proteins: Int, fats: Int, carbs: Int ) {
        self.name = name
        self.weight=weight
        self.kkal=kkal
        self.proteins=proteins
        self.fats=fats
        self.carbs=carbs
    }
    
    var description: String {
       return "Каллорийность продукта \(name) составляет  \(kkal) ккал"
    }
    
    func Sum () -> Int {               //Метод вывода суммы БЖУ (чисто для примера использования, не несет информационной нагрузки
        return proteins+fats+carbs
    }
    
}

enum typeOfMilk {
    case cow
    case sheep
    case goat
    case buffalo
}

class MilkProducts: Food {             //Унаследованный класс Молочные продукты, доп.параметры Жирность и Вид молока
    var typeOfMilk: typeOfMilk
    var percentOfFat: Double
    init(name: String, weight: Double, kkal: Int, proteins: Int, fats: Int, carbs: Int, percentOfFat: Double, typeOfMilk:typeOfMilk) {
        self.typeOfMilk = typeOfMilk
        self.percentOfFat = percentOfFat
        super.init(name: name, weight: weight, kkal: kkal, proteins: proteins, fats: fats, carbs: carbs)
        
}
}

enum cheeseClassification {
    case soft
    case semi_soft
    case hard
    case semi_hard
}

class Cheese: MilkProducts {                  //унаследованный от Молочных продуктов класс Сыры, доп.параметр вид сыра
    var cheeseClassification: cheeseClassification
    init(name: String, weight: Double, kkal: Int, proteins: Int, fats: Int, carbs: Int, percentOfFat: Double, typeOfMilk:typeOfMilk, cheeseClassification:cheeseClassification) {
        self.cheeseClassification = cheeseClassification
        super.init(name: name, weight: weight, kkal: kkal, proteins: proteins, fats: fats, carbs: carbs, percentOfFat: percentOfFat, typeOfMilk: typeOfMilk)
    }
}

let parmesan = Cheese (name: "Parmesan", weight: 350, kkal: 270, proteins: 66, fats: 54, carbs: 78, percentOfFat: 45, typeOfMilk: typeOfMilk.cow, cheeseClassification: cheeseClassification.hard)
print(parmesan.description)
