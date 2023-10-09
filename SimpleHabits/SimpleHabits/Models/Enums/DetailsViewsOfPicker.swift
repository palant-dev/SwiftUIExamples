//
//  DetailsViewsOfPicker.swift
//  SimpleHabits
//
//  Created by Antonio Palomba on 09/10/23.
//

import Foundation

enum detailsViewsOfPicker: String, CaseIterable, Identifiable{
    case sessionsList = "Sessions",
         comments = "Comments"
    var id: Self { self }
}
