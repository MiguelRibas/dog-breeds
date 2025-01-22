//
//  ContentView.swift
//  dog-breed
//
//  Created by miguelribas on 21/01/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = DogBreedsViewModel()
    
    var body: some View {
        BreedListComponent(model: viewModel.dogBreeds)
    }
}

#Preview {
    ContentView()
}
