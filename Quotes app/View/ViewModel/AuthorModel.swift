//
//  AuthorModel.swift
//  Quotes app
//
//  Created by Arthur Sh on 20.08.2022.
//

import Foundation


class AuthorModel: ObservableObject {
    
    @Published var authors = [Author]()
    
    init() {
        
        self.authors = getDataFromJson()

}
    
    func getDataFromJson () -> [Author] {
       let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        if let pathString = pathString {
            let url = URL(fileURLWithPath: pathString)
            
            do{
            let data = try Data(contentsOf: url)
               let decoder = JSONDecoder()
                do{
               var authors = try decoder.decode([Author].self, from: data)
                
                    for index in 0..<authors.count {
                        authors[index].id = UUID()
                    }
                    
                    
                    
                    return authors
                    
                }catch{
                    print(error)
                }
            }catch{
                print(error)
            }
        }
        return [Author]()
    }
    
}
