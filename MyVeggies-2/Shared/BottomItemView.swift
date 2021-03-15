//
//  BottomItemView.swift
//  MyVeggies
//
//  Created by matthieu passerel on 24/07/2020.
//

import SwiftUI

struct BottomItemView: View {
    var imageName: String
    var category: String
    var body: some View {
        HStack {
            Image(imageName).renderingMode(
                .original)
                .resizable()
                .frame(width: 40, height: 40, alignment:.center)
            Text(category)
                .bold()
                .foregroundColor(.primary)
        }
        .padding()
        .background(Color.yellow)
        .clipShape(Capsule())
    }
}

struct BottomItemView_Previews: PreviewProvider {
    static var previews: some View {
        BottomItemView(imageName: "cerise", category: "Fruits").previewLayout(.sizeThatFits)
    }
}
