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
    let age: String
    let temperament: String
    let temperamentColor: Color
    
    init(icon: String, breed: String, age: String, temperament: String, temperamentColor: Color) {
        self.icon = icon
        self.breed = breed
        self.age = age
        self.temperament = temperament
        self.temperamentColor = temperamentColor
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
                Text("Grupo: \(age)")
                    .font(.system(size: 15, weight: .regular))
                    .foregroundColor(Color(white: 0.3))
                HStack {
                    Text("Temperamento:")
                        .font(.system(size: 15, weight: .regular))
                        .foregroundColor(Color(white: 0.3))
                    Text(temperament)
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundColor(temperamentColor)
                }
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
                    ListCard(icon: item.icon, breed: item.breed, age: item.group, temperament: item.temperament, temperamentColor: colorFromString(item.temperamentColor))
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 16)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    BreedListComponent(model: [DogBreedsModel(icon: "golden",
                              breed: "Golden Retriever",
                              group: "Retriever",
                              temperament: "Pranksters",
                              temperamentColor: "green"),
                   
                   DogBreedsModel(icon: "french_bulldog",
                              breed: "French Bulldog",
                              group: "Bulldog",
                              temperament: "Pranksters",
                              temperamentColor: "green"),
    
                   DogBreedsModel(icon: "beagle",
                              breed: "Beagle",
                              group: "Rastreador",
                              temperament: "Sociable",
                              temperamentColor: "blue"),
    
                   DogBreedsModel(icon: "bull_breed",
                              breed: "Bull Terrier",
                              group: "Terrier - Bull",
                              temperament: "Energy",
                              temperamentColor: "red"),
                   
                   DogBreedsModel(icon: "border_collie",
                              breed: "Border Collie",
                              group: "Pastor",
                              temperament: "Energy",
                              temperamentColor: "red")
    ])
}
