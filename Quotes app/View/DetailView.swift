//
//  NavigationView.swift
//  Quotes app
//
//  Created by Arthur Sh on 20.08.2022.
//

import SwiftUI

struct DetailView: View {
    
    var author: Author?
    
    var body: some View {
       
      
        VStack(alignment: .leading){
        if let author = author {
            Text(author.name)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            
            ForEach(author.quotes, id: \.self){i in
                Text(i)
                    .font(.title3)
                    .fontWeight(.light)
                    .padding(/*@START_MENU_TOKEN@*/.all, 5.0/*@END_MENU_TOKEN@*/)
                    
            }
            
            
        
                }
            Spacer()
        }
        .padding(.leading)
        }
        
        
    }

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        
       
        DetailView(author: Author.TestData())
            .preferredColorScheme(.dark)
    }
}
