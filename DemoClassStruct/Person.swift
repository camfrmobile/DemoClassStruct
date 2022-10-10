//
//  Person.swift
//  DemoClassStruct
//
//  Created by Trần Văn Cam on 01/10/2022.
//

import Foundation

// MARK: Class
// một đối tượng bao gồm nhiều thuộc tính và phương thức

class Person {
    // khai báo các thuộc tính
    var id: String
    var name: String
    var age: Int
    var country: String
    
    init() { // Khoi tao khong tham so
        id = ""
        name = ""
        age = 0
        country = ""
    }
    
    // Khởi tạo có tham số (có thể có hoặc không)
    init(id: String, name: String, age: Int, country: String){
        self.id = id
        self.name = name
        self.age = age
        self.country = country
    }
    
    init(id: String, name: String) {
        self.id = id
        self.name = name
        self.age = 0
        self.country = ""
    }
    
    // Khai báo các Phương thức (có thể có hoặc không)
    // Phương thức in ra thông tin
    
    func showInfo () {
        print("ID:", id, "Name", name, "age", age, "country", country)
    }
    func getAge() -> Int {
        return self.age
    }
    
    // Hàm được gọi khi đối tượng Péon dược giải phóng
    // Chỉ class mới có
    // Đối tượng được giải phóng chi khi không có tham chiếu nào đến nó
    deinit {
        print("\(self.name) được giải phóng")
    }
}
