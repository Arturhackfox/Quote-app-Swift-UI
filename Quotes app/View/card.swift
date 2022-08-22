//
//  card.swift
//  Quotes app
//
//  Created by Arthur Sh on 20.08.2022.
//

import SwiftUI

struct card: View {
    
    var author:Author
    
    var body: some View {
        
        
      
            ZStack{
                
                Image(author.image)
                    .resizable()
                    .frame(width: 360, height: 400)
                    .cornerRadius(90)
                    .padding(.bottom, 18)
                VStack(alignment: .leading, spacing: 7.0){
                    Text(author.quotes[0])
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                    
                    Text("-" + author.name)
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                    
                    
                }.padding(.horizontal, 22.0)
                
            }
        
    }
}

struct card_Previews: PreviewProvider {
    static var previews: some View {
        card(author: Author.TestData())
    }
}
