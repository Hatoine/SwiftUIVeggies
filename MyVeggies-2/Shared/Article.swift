//
//  Article.swift
//  MyVeggies
//
//  Created by matthieu passerel on 24/07/2020.
//

import Foundation

struct Article: Identifiable {
    var id = UUID()
    var name: String
    var type: CategoryType
}
