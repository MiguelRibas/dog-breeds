//
//  DBList.swift
//  dog-breed
//
//  Created by miguelribas on 21/01/25.
//

import SwiftUI

struct ListCard: View {
    let icon: String
    let breed: String
    
    init(icon: String, breed: String) {
        self.icon = icon
        self.breed = breed
    }
    
    var body: some View {
        HStack(spacing: 8) {
            Image(icon)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading){
                Text(breed)
                    .font(.system(size: 20, weight: .medium))
                    .foregroundColor(.black)
            }
            Spacer()
            NavigationLink(destination: DetailBreedsView()) {
                Image(systemName: "chevron.right")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.black)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 4)
        
    }
}

struct BreedListComponent: View {
    
    let model: [DogBreedsModel]
    
    init(model: [DogBreedsModel]) {
        self.model = model
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 18) {
                ForEach(model, id: \.breed) { item in
                    ListCard(icon: item.icon, breed: item.breed)
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 16)
        }
        .frame(maxWidth: .infinity)
    }
}

//#Preview {
//    BreedListComponent(model: [DogBreedsModel(icon: "golden",
//                                              breed: "Golden Retriever", details: ""),
//                   
//                   DogBreedsModel(icon: "french_bulldog",
//                                  breed: "French Bulldog", details: ""),
//    
//                   DogBreedsModel(icon: "beagle",
//                                  breed: "Beagle", details: ""),
//    
//                   DogBreedsModel(icon: "bull_breed",
//                                  breed: "Bull Terrier", details: ""),
//                   
//                   DogBreedsModel(icon: "border_collie",
//                                  breed: "Border Collie", details: "")
//    ])
//}
