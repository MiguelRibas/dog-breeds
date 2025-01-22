//
//  DogBreedsModel.swift
//  dog-breeds
//
//  Created by miguelribas on 20/01/25.
//

import Foundation

struct BreedsResponse: Codable {
    let data: [BreedData]
    let links: PaginationLinks
}

// Model para cada raça
struct BreedData: Codable {
    let id: String
    let type: String
    let attributes: BreedAttributes
}

// Atributos de cada raça
struct BreedAttributes: Codable {
    let name: String
    let description: String
    let hypoallergenic: Bool
}

// Links de paginação
struct PaginationLinks: Codable {
    let selfLink: String
    let current: String
    let next: String?
    let last: String?

    // Mapeamento customizado para a palavra reservada "self"
    private enum CodingKeys: String, CodingKey {
        case selfLink = "self"
        case current
        case next
        case last
    }
}

struct DogBreedsModel: Codable {
    let icon: String
    let breed: String
    let group: String
    let temperament: String
    let temperamentColor: String
    
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
