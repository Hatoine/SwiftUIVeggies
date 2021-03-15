//
//  BottomView.swift
//  MyVeggies
//
//  Created by matthieu passerel on 24/07/2020.
//

import SwiftUI

struct BottomView: View {
    @Binding var selected: Int
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                Button(action: {
                    selected = 0
                }, label: {
                    BottomItemView(imageName: "tomates", category: "Tout")
                })
                Button(action: {
                    selected = 1
                }, label: {
                    BottomItemView(imageName: "cerise", category: "Fruits")
                })
                Button(action: {
                    selected = 2
                }, label: {
                    BottomItemView(imageName: "carotte", category: "Légumes")
                })
                Button(action: {
                    selected = 3
                }, label: {
                    BottomItemView(imageName: "piment", category: "Condiments")
                })
            }
        }.frame(height: 75)
    }
}

struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomView(selected: .constant(1))
    }
}
