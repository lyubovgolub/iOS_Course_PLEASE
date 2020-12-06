// 1. Придумать ENUM к которому можно применить rawValue (не Error), другой к которому можно применить Associated Values (не из примеров с занятия)

//RawValue
enum MarkInAmericanSchool: Int {    //система оценок в американской школе
    case A = 5
    case B = 4
    case C = 3
    case D = 2
    case E = 1
}
MarkInAmericanSchool (rawValue: 4)

//AssociatedValue
enum Breathing {              //енам для обозначения видов упражнения дыхательной гимнастики
    case active
    case relaxing
    case moderately
}

enum Exercise {                     //выполненные на тренировке упражнения
    case running (Double, Double)   //бег, получаем параметр дистанции в км и потраченное время
    case pushUp (Int)               //отжимания, получаем количество отжиманий
    case squats (Int, Int)          //приседания, получаем количество приседаний и количество повторов
    case breathing (Breathing)      //дыхательная гимнастика
}


let newExercise = Exercise.squats(15, 3)

func toDo (exercise: Exercise) {
    switch exercise {
    case .running(let distance, let duration):
        print("Running: the distance is \(distance) and the time is \(duration)")
    case .pushUp(let number):
        print("Push-ups: the number is \(number)")
    case .squats(let number1, let number2):
        print("Squats: the number of squats is \(number1) and the number of repeats is \(number2)")
    case .breathing:
        print("Breathing: the breathing is done")
    }
}
toDo(exercise: newExercise)

// 3. Описать с помощью ENUM погодные явления, сопроводить(где возможно) associated values

enum Weather {
    case rain (level: Double)
    case sunny
    case windy (speed: Double)
    case snow (strength: Double)
}

func toTakeUmbrella (weather: Weather) {
    switch weather {
    case .rain (let level):
        print ("The rainfall is \(level), you should take an umbrella")
    case .sunny :
        print("The weather is sunny, you needn't take an umbrella")
    case .windy(let speed):
        print("It's windy, the wind speed is \(speed), but you needn\t take an umbrella")
    case .snow(let strength):
        print("It is snowfall outside, it's strength is \(strength), so you can take an umbrella")
    }
}
var today = Weather.snow(strength: 7.3)
toTakeUmbrella(weather: today)
