//
//  Animal.swift
//  DemoClassStruct
//
//  Created by Trần Văn Cam on 01/10/2022.
//

import Foundation

// MARK: Struct
// Giống class: bao gồm các thuộc tính (properties) và các phương thức (method / hàm)

struct Animal {
    
    // Các thuộc tính
    var name: String
    var foots: Int
    var isFly: Bool
    
    
    // Các phương thức khởi tạo
    // Struct không cần thiết phải có phương thức init
    // Tự động có phương thức khởi tạo đầy đủ các tham số
    // Chỉ cần viết phương thức khởi tạo không tham số hoặc thiếu tham số
    init() {
        name = ""
        foots = 0
        isFly = false
    }
    init(name: String, foots: Int, isFly: Bool) {
        self.name = name
        self.foots = foots
        self.isFly = isFly
    }
    
    init (name: String) {
        self.name = name
        self.foots = 4
        self.isFly = false
    }
    
    
    // Các phương thức
    
    func kiemTraBay() { // Kiểm tra xem đối tượng có thể bay không
        if self.isFly {
            print("\(self.name) có thể bay")
        }
        else
        {
            print("\(self.name) không thể bay")
        }
    }
    
    func getFoots() -> Int {
        return self.foots
    }
    
    
    // deinit không có trong struct
    
}
