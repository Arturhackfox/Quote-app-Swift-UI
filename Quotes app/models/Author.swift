//
//  quoteModel.swift
//  Quotes app
//
//  Created by Arthur Sh on 20.08.2022.
//

import Foundation


struct Author: Decodable, Identifiable {
    
    var id: UUID?
    var name:String
    var quotes:[String]
    var image:String
    
    static func TestData() -> Author {
        
        let test = Author(id: UUID(), name: "tester TEST", quotes: ["dfglkjdfjldfljkgdfjkgdlfkglkjfdgkljdfgfkldjgkljdfgkljdflgkfd", "zzzxlslkfkweoriwej2o3j42cjfojoi3"], image: "focus")
        
        return test
    }
    
}
