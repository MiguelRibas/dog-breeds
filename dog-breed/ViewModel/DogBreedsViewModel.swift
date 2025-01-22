//
//  DogBreedsViewModel.swift
//  dog-breeds
//
//  Created by miguelribas on 20/01/25.
//

import SwiftUI

class DogBreedsViewModel: ObservableObject {
    @Published var dogBreeds: [DogBreedsModel] = []

    init() {
        loadDogBreeds()
    }

    private func loadDogBreeds() {
        guard let url = Bundle.main.url(forResource: "dogBreeds", withExtension: "json") else {
            print("Arquivo JSON não encontrado.")
            return
        }

        do {
            let data = try Data(contentsOf: url)
            self.dogBreeds = try JSONDecoder().decode([DogBreedsModel].self, from: data)
        } catch {
            print("Erro ao carregar JSON: \(error)")
        }
    }
}
