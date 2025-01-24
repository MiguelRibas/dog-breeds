//
//  QualityRatingComponent.swift
//  dog-breed
//
//  Created by miguelribas on 23/01/25.
//

import SwiftUI

struct QualityRatingComponent: View {
    let quality: String
    let rating: Int
    
    var body: some View {
        
        
        HStack {
            Text(quality)
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.primary)
            
            Spacer()
            
            HStack(spacing: 4) {
                ForEach(1...5, id: \.self) { index in
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(index <= rating ? .yellow : Color(white: 0.8))
                }
            }
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 16)
        .background(Color.white)
        .cornerRadius(8)
    }
}

#Preview {
    VStack(spacing: 12) {
        QualityRatingComponent(quality: "Cão de Guarda", rating: 5)
        QualityRatingComponent(quality: "Gosta de ficar sozinho", rating: 3)
        QualityRatingComponent(quality: "Apego à Família", rating: 4)
        QualityRatingComponent(quality: "Tendência a latir", rating: 2)
    }
    .padding()
}
