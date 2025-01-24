//
//  DogBreedsModel.swift
//  dog-breed
//
//  Created by miguelribas on 23/01/25.
//

import Foundation

struct DogBreedsModel: Codable {
    let icon: String
    let breed: String
    let details: BreedsDetails
    
    func loadDogBreeds() -> [DogBreedsModel] {
        guard let url = Bundle.main.url(forResource: "dogBreeds", withExtension: "json") else {
            print("Arquivo JSON não encontrado.")
            return []
        }

        do {
            let data = try Data(contentsOf: url)
            let dogBreeds = try JSONDecoder().decode([DogBreedsModel].self, from: data)
            return dogBreeds
        } catch {
            print("Erro ao carregar JSON: \(error)")
            return []
        }
    }
}

struct BreedsDetails: Codable {
    let title: String
    let subTitle: String
    let aboutBreed: String
}
