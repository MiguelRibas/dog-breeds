//
//  CardInformativeComponent.swift
//  dog-breed
//
//  Created by miguelribas on 23/01/25.
//

import SwiftUI

struct CardInformativeComponent: View {
    
    var title: String
    var subTitle: String?
    var aboutBreed: String
    
    init(title: String, subTitle: String? = nil, aboutBreed: String) {
        self.title = title
        self.subTitle = subTitle
        self.aboutBreed = aboutBreed
    }
    
    var body: some View {
        ZStack {
            Color(white: 0.95)
                .ignoresSafeArea()
            
            VStack(spacing: 8) {
                Text(title)
                    .font(.system(size: 20, weight: .semibold))
                
                if let subTitle = subTitle {
                    Text(subTitle)
                        .font(.system(size: 15, weight: .semibold))
                }
                
                Text(aboutBreed)
                    .font(.system(size: 15, weight: .regular))
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
            }
            .padding(.all, 16)
            .background(Color.white)
            .cornerRadius(12)
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    CardInformativeComponent(title: "O companheiro ideal para diversão", subTitle: "CBKC - Grupo 08", aboutBreed: "O cachorro Golden Retriever possui um grande porte, é muito forte e peludo e seus olhos escuros transmitem a doçura de seu temperamento. Suas orelhinhas caídas e a semelhança de sua boca a um sorriso são características irresistíveis para quem ama pet. A raça é extremamente amável, muito companheira dos tutores e fica ainda mais alegre na presença de crianças. Se bem treinada, pode ser uma excelente companhia para gatos e outros animais. Certamente uma das principais características do Golden, que o torna um dos cães mais populares, é a sua alta sociabilidade e anseio por afeto. Pode-se dizer que foram feitos para a família e, por isso, precisam ficar junto a seu “bando humano”, dentro de casa, e pouco tempo sozinhos no quintal.")
}
