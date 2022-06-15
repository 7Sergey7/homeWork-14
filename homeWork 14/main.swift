//
//  main.swift
//  homeWork 14
//
//  Created by Seroj on 14.06.22.
//

import Foundation

//homeWork 14.1
/*
  Ստեղծել class որը MyTime անունով որը պետք է ունենա ժամանակը բնութագրող property-եր (ժամ, րոպե, վարկյան)։
 Այս կլասի էկզեմպլայրը պետք է ունոնոա հետևյալ մեթոդները՝։
 - փոխել ժամի սկզբնական արժեքը
 - փոխել րոպեի սկզբնական արժեքը
 - փոկել վարկյանի սկզբնական արժեքը
 - վերադաձնի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ss (23:45:31)
 - տպի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ss (23:45:31)
 */

class MyTime {
    var hour: Int = 22
    var minute: Int = 48
    var second: Int = 23

    func changeHour() {
        if hour < 24 {
            hour += 1
        } else if hour > 24 {
            hour = 0
        }
    }
    func changeMinute() {
        if minute < 60 {
            minute += 1
        } else if minute > 60 {
            minute = 0
        }
    }
    func changeSecond() {
        if second < 60 {
            second += 1
        } else if second > 60 {
            second = 0
        }
    }
    func returnTime() -> String {
        "hh:mm:ss (\(hour) : \(minute) : \(second))"
    }
    func printTime() {
        print("hh:mm:ss (\(hour) : \(minute) : \(second))")
    }
}
var timeExem = MyTime()

timeExem.changeHour()
timeExem.changeMinute()
timeExem.changeSecond()

let a = timeExem.returnTime()
print(a)
timeExem.printTime()


//homeWork 14.2
/*
 Ստեղծել class որը MyDate անունով որը պետք է ունենա ամսաթիվը  և ժամանակը բնութագրող property-եր (օր, ամիս, տարի, ժամ, րոպե, վարկյան)։
 Այս կլասի էկզեմպլայրը պետք է ունոնոա հետևյալ մեթոդները՝։
 - փոխել օրվա սկզբնական արժեքը
 - փոխել ամսվա սկզբնական արժեքը
 - փոխել տարվա սկզբնական արժեքը
 - փոխել ժամի սկզբնական արժեքը
 - փոխել րոպեի սկզբնական արժեքը
 - փոկել վարկյանի սկզբնական արժեքը
 - վերադաձնի ամսաթիվի տեքստային տարբերակը այս ֆորմատով dd:mm:yyyy hh:mm:ss (02:03:2022 23:45:31)
 - տպի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ssdd:mm:yyyy hh:mm:ss (02:03:2022 23:45:31)
 */

class MyDate {
    var day = 14
    var month = 6
    var year = 2022
    var hour = 22
    var minute = 59
    var second = 6

    func changeDay() -> Int{
        if day < 30 && hour == 24{
            day += 1
        } else if day <= 30 {
            return day
        } else {
            day = 1
        }
        return day
    }
    func changeMonth() -> Int{
        if month < 12 && day == 30 {
            month += 1
        } else if month <= 12 {
            return month
        } else {
            month = 1
        }
        return month
    }
    func changeYear() {
        if month == 12 && day == 30 {
            year += 1
            month = 1
            day = 1
        }
    }
    func changeHour() {
        if hour < 24 && minute == 59 {
            hour += 1
        } else if hour > 24 {
            hour = 0
        }
    }
    func changeMinute() {
        if minute < 59 && second == 59 {
            minute += 1
        } else if minute > 59 {
            minute = 0
        }
    }
    func changeSecond() {
        if second < 59 {
            second += 1
        } else if second > 59 {
            second = 0
        }
    }
    func returnDate() -> String {
        "dd:mm:yyyy (\(day):\(month):\(year)) | hh:mm:ss (\(hour): \(minute): \(second))"
    }
    func printDate() {
        print("dd:mm:yyyy (\(day):\(month):\(year)) | hh:mm:ss (\(hour): \(minute): \(second))")
    }
}
let dateExemp = MyDate()

dateExemp.changeDay()
dateExemp.changeMonth()
dateExemp.changeYear()
dateExemp.changeHour()
dateExemp.changeMinute()
dateExemp.changeSecond()

let b = dateExemp.returnDate()
print(b)
dateExemp.printDate()


//homeWork 14.3
/*
 Ստեղծել class որը MyDate անունով որը պետք է ունենա ամսաթիվը  և ժամանակը բնութագրող property-եր (օր, ամիս, տարի, MyTime տիպի property-ի որը ստեղծվել էր առաջին խնդրում)։
Այս կլասի էկզեմպլայրը պետք է ունոնոա հետևյալ մեթոդները՝։
- փոխել օրվա սկզբնական արժեքը
- փոխել ամսվա սկզբնական արժեքը
- փոխել տարվա սկզբնական արժեքը
- փոխել ժամի սկզբնական արժեքը
- փոխել րոպեի սկզբնական արժեքը
- փոկել վարկյանի սկզբնական արժեքը
- վերադաձնի ամսաթիվի տեքստային տարբերակը այս ֆորմատով dd:mm:yyyy hh:mm:ss (02:03:2022 23:45:31)
- տպի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ssdd:mm:yyyy hh:mm:ss (02:03:2022 23:45:31)
 */

class MyDate {
    var day = 12
    var month = 7
    var year = 2022
    var time = MyTime()

    func changeDay() {
        if day < 30 {
            day += 1
        }
    }
    func changeMonth() {
        if month < 12 {
            month += 1
        }
    }
    func changeYear() {
        if month == 12 && day == 30 {
            year += 1
        }
    }
    func changeHour() {
        time.changeHour()
    }
    func changeMinute() {
        time.changeMinute()
    }
    func changeSecond() {
        time.changeSecond()
    }

    func returnDateAndTime() -> String {
        "dd:mm:yyyy (\(day):\(month):\(year)) | \(time.returnTime())"
    }
    func printDateAndTime() {
        print("dd:mm:yyyy (\(day):\(month):\(year)) | \(time.returnTime())")
    }
}
let exempDate = MyDate()

let c = exempDate.returnDateAndTime()
print(c)
exempDate.printDateAndTime()


//homeWork 14.4
/*
 Ստեղծել steuct MyPoint որը իր մեջ կապարունակի կետի կորդինատները երկչափ հարթուտյունում բնութագրող property-եր (x, y) և կետի անունը ներկայացնող property-ի
Այս կլասի էկզեմպլայրը պետք է ունոնոա հետևյալ մեթոդները։
- փոխել  x-ի սկզբնական արժեքը
- փոխել  y-ի սկզբնական արժեքը
- փոխել  կետի անունի սկզբնական արժեքը
- վերադաձնել  կետի տվյալները այս ֆորմատով a(x: 1, y: 4)
- տպի  կետի տվյալները այս ֆորմատով a(x: 1, y: 4)
*/

struct MyPoint {
    var x: Float = 1
    var y: Float = 2
    var poinName = "A"
    
    mutating func changeX(x: Float) {
        self.x = x
    }
    mutating func changeY(y: Float) {
        self.y = y
    }
    mutating func changePointName(pointName: String) {
        self.poinName = pointName
    }
    func returnPointInfo() -> String {
        "\(poinName)(x: \(x), y: \(y))"
    }
    func printPointInfo() {
        print("\(poinName)(x: \(x), y: \(y))")
    }
}

var pointExemp = MyPoint()

let d = pointExemp.returnPointInfo()
print(d)
pointExemp.printPointInfo()


//homeWork 14.5
/*
 Ստեղծել steuct MyRect որը իր մեջ կապարունակի ուղղանկյան տվյալները բնութագրող property-եր (սկզբնակետ MyPoint տիպի, երկարություն, բարձրություն) և ուղանկյան անունը ներկայացնող property-ի
Այս կլասի էկզեմպլայրը պետք է ունոնոա հետևյալ մեթոդները։
- փոխել  սկզբնակետի x-ի սկզբնական արժեքը
- փոխել  սկզբնակետի y-ի սկզբնական արժեքը
- փոխել  սկզբնակետի կետի անունի սկզբնական արժեքը
- փոխել  երկարության սկզբնական արժեքը
- փոխել  բարձրության սկզբնական արժեքը
- փոխել  ուղղանկյան անունի սկզբնական արժեքը
- հաշվել ուղղանկայն մակերեսը և վերադաձնել
- հաշվել  ուղղանկայն պարագիծը և վերադաձնել
- վերադաձնել  ուղղանկյան տվյալները այս ֆորմատով  rectOne [ origin: a(x: 1, y: 4), height: 23, weight: 34 ]
 */

struct MyRect {
    var origin = MyPoint()
    var lenght: Float = 10
    var width: Float = 5
    var rectName = "ABCD"
    
    mutating func changeXRect() {
        origin.changeX(x: 2)
    }
    
    mutating func changYRect() {
        origin.changeY(y: 3)
    }
    
    mutating func changeOriginName() {
        origin.changePointName(pointName: "B")
    }
    
    mutating func changeLenght(lenght: Float) {
        self.lenght = lenght
    }
    
    mutating func changeHeight(width: Float) {
        self.width = width
    }
    
    mutating func changeRectName(rectName: String) {
        self.rectName = rectName
    }
    
    func rectArea() -> Float {
        let s:Float = lenght * width
        return s
    }
    
    func rectPerimeter() -> Float {
        let p: Float = lenght * 2 + width * 2
        return p
    }
    
    func rectData() -> String {
        "\(rectName) [ origin: \(origin.returnPointInfo()), lenght: \(lenght), width: \(width)]"
    }
}

var rectExemp = MyRect()

rectExemp.changeOriginName()
rectExemp.changeRectName(rectName: "BCDE")

let e = rectExemp.rectData()
print(e)

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////












//class MyTime {
//    var hour: Int = 0
//    var minute: Int = 0
//    var second: Int = 0
//
//    func changeSecond() {
//        var item = 0
//        while second < 59 {
//            second += 1
//            item += 1
//        }
//    }
//    func changeMinute() {
//        var item = 0
//        while minute < 59 {
//            minute += 1
//            item += 1
//        }
//    }
//    func changeHour() {
//        var item = 0
//        while hour < 12 {
//            hour += 1
//            item += 1
//        }
//    }
//    func returnTime() -> String {
//        "hh:mm:ss (\(hour) : \(minute) : \(second))"
//    }
//    func printTime() {
//        print("hh:mm:ss (\(hour) : \(minute) : \(second))")
//    }
//}
//
//var timeExem = MyTime()
//
//timeExem.changeSecond()
//timeExem.changeMinute()
//timeExem.changeHour()
//
//let a = timeExem.returnTime()
//print(a)
//timeExem.printTime()



//class MyDate {
//    var day = 14
//    var month = 6
//    var year = 2022
//    var hour = 13
//    var minute = 59
//    var second = 23
//
//    func changeDay() -> Int{
//        if day < 30 && hour == 24{
//            day += 1
//        } else if day <= 30 {
//            return day
//        } else {
//            day = 1
//        }
//        return day
//    }
//    func changeMonth() -> Int{
//        if month < 12 && day == 30 {
//            month += 1
//        } else if month <= 12 {
//            return month
//        } else {
//            month = 1
//        }
//        return month
//    }
//    func changeYear() {
//        if month == 12 && day == 30 {
//            year += 1
//            month = 1
//            day = 1
//        }
//    }
//    func changeHour() {
//        if minute == 60 {
//            hour += 1
//        }
//    }
//    func changeMinute() {
//        if minute < 59 {
//            minute += 1
//        }
//    }
//    func changeSecond() {
//        if second < 59 {
//            second += 1
//        }
//    }
//    func returnDate() -> String {
//        "dd:mm:yyyy (\(day):\(month):\(year)) | hh:mm:ss (\(hour): \(minute): \(second))"
//    }
//    func printDate() {
//        print("dd:mm:yyyy (\(day):\(month):\(year)) | hh:mm:ss (\(hour): \(minute): \(second))")
//    }
//}
//
//let dateExemp = MyDate()
//
//dateExemp.changeDay()
//dateExemp.changeMonth()
//dateExemp.changeYear()
//dateExemp.changeHour()
//dateExemp.changeMinute()
//dateExemp.changeSecond()
//
//let b = dateExemp.returnDate()
//print(b)
//dateExemp.printDate()
