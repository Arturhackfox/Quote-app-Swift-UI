//
//  ContentView.swift
//  Quotes app
//
//  Created by Arthur Sh on 20.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = AuthorModel()
    
    var body: some View {
        
        
        NavigationView{
            ScrollView{
                ForEach(model.authors){a in
                    NavigationLink(destination: DetailView(author: a)) {
                        card(author: a)
                    }
                   
                }
            }
        }
        }
    
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
