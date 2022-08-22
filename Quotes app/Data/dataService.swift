//
//  dataService.swift
//  Quotes app
//
//  Created by Arthur Sh on 20.08.2022.
//

import Foundation


class DataService {
    
    static func getDataFrom () -> [Author] {
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        guard pathString != nil else {
            return [Author]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do{
                let authorData = try decoder.decode([Author].self, from: data)
                
                
                for i in authorData {
                    i.id = UUID()
                }
                return authorData
            }catch {
                print(error)
            }
        } catch {
            print(error)
        }
        return [Author]()
    }
}
