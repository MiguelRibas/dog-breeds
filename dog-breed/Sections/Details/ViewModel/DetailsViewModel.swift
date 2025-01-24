//
//  DetailsViewModel.swift
//  dog-breed
//
//  Created by miguelribas on 23/01/25.
//

import SwiftUI

class DetailsViewModel: ObservableObject {
    @Published var details: [DetailsModel]  = []
}
