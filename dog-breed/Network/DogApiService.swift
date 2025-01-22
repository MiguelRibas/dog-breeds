//
//  DogApiService.swift
//  dog-breeds
//
//  Created by miguelribas on 20/01/25.
//

import Foundation

final class DogApiService {
    private let baseURL = "https://dogapi.dog/api/v2/breeds"
    
    func fetchBreeds(completion: @escaping (Result<BreedsResponse, Error>) -> Void) {
        guard let url = URL(string: baseURL) else {
            completion(.failure(DogApiError.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(DogApiError.noData))
                return
            }
            
            do {
                let breedsResponse = try JSONDecoder().decode(BreedsResponse.self, from: data)
                completion(.success(breedsResponse))
            } catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
    
    enum DogApiError: Error {
        case invalidURL
        case noData
    }
}
