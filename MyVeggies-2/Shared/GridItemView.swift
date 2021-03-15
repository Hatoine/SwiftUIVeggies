//
//  GridView.swift
//  MyVeggies
//
//  Created by matthieu passerel on 24/07/2020.
//

import SwiftUI

struct GridItemView: View {
    var article: Article
    var body: some View {
        VStack {
            Text(article.name)
                .font(.largeTitle)
                .foregroundColor(.white)
            Image(article.name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                
        }.padding()
        .background(setColor())
        .cornerRadius(25)
    }
    
    func setColor() -> Color {
        switch article.type {
        case .fruit: return .yellow
        case .legume: return .green
        case .condiment: return .gray            
        }
    }
}

struct GridItemView_Previews: PreviewProvider {
    static var previews: some View {
        GridItemView(article: datas()[5]).previewLayout(.sizeThatFits)
    }
}
