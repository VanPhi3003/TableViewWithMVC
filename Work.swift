//
//  File.swift
//  tableViewWithMVC
//
//  Created by Cntt36 on 7/5/17.
//  Copyright © 2017 nhom5. All rights reserved.
//

import Foundation

class Work{
    var name: String
    var listCell: [String]
    
    init(name: String, listCell: [String]) {
        self.name = name
        self.listCell = listCell
    }
    
    class func section1() -> Work{
        return Work(name: "section 1", listCell: [
            "Task 1", "Task 2", "Task 3"
            ])
    }
    
    class func section2() -> Work{
        return Work(name: "section 2", listCell: [
            "Task 1", "Task 2", "Task 3"
            ])
    }
    
    class func getList() -> [Work]{
        return [self.section1(), self.section2()]
    }
}

