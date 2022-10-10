//
//  main.swift
//  DemoClassStruct
//
//  Created by Trần Văn Cam on 01/10/2022.
//

import Foundation


var person1: Person
// Khởi tạo giá trị (gọi đến phương thức init)
person1 = Person() // Khởi tạo không tham số
// Gọi đến các thuộc tính hoặc phương thức thông qua dấu "."
person1.showInfo()
person1.id = "24785"
person1.name = "Techmaster"
person1.age = 10
person1.country = "Hà Nội"
person1.showInfo()

var person2: Person? = Person(id: "00000", name: "Nguyen van a", age: 30, country: "Ha Long")
person2?.showInfo()
print("Tuoi peson2: ", person2?.getAge() ?? 0)
person2 = nil // Không trỏ đến đối tượng Nguyen Van A nữa


// MARK: Struct

var dog: Animal = Animal(name: "Dog", foots: 4, isFly: false)
dog.kiemTraBay()
print(dog.getFoots())

var bird = Animal(name: "CHim sẻ", foots: 2, isFly: true)
bird.kiemTraBay()
print(bird.getFoots())

// Sự khác nhau giữa Class và Struct

/*
 - Class là tham chiếu (mang địa chỉ trỏ đến ô nhớ), Struct là tham trị (mang giá trị ô nhơ chứa)
 - Struct có thể có hàm init hoặc không
 - Chỉ Class mới có khả năng giải phóng ô nhớ (Deinit)
 - Class có khả năng kế thừa (đơn kế thừa)
 */

// VD về tính chất
let person3 = Person(id: "123243", name: "John", age: 30, country: "Ha Nội")
var person4 = person3

person3.showInfo()
person4.showInfo()
// đổi giá trị thuộc tính person4
person4.name = "Shainline"
person4.country = "Thai Binh"

print("Sau thay đổi:") // Đối tượng person3 cũng thay đổi theo vì tính chất tham chiếu
person3.showInfo()
person4.showInfo()

print("=======STRUCT=======")
let blackCat = Animal(name: "Mèo đen", foots: 4, isFly: false)
var blackBird = blackCat
blackCat.kiemTraBay()
blackBird.kiemTraBay()

// Đổi giá trị thuộc tính blackBird
blackBird.foots = 2
blackBird.isFly = true
blackBird.name = "Chim sẻ"

print("Sau khi thay đổi")
blackCat.kiemTraBay()
blackBird.kiemTraBay()


