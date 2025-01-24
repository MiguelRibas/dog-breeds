//
//  DetailBreedsView.swift
//  dog-breed
//
//  Created by miguelribas on 22/01/25.
//

import SwiftUI

struct DetailBreedsView: View {
    
    var body: some View {
        ZStack {
            Color(white: 0.95)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    Image("golden")
                        .frame(maxWidth: .infinity, maxHeight: 100)
                        .padding(.top, 50)
                        .padding()
                        .background(Color.cyan)
                        .padding(.bottom, 30)
                    CardInformativeComponent(title: "O companheiro ideal para diversão", subTitle: "CBKC - Grupo 08", aboutBreed: "O cachorro Golden Retriever possui um grande porte, é muito forte e peludo e seus olhos escuros transmitem a doçura de seu temperamento. Suas orelhinhas caídas e a semelhança de sua boca a um sorriso são características irresistíveis para quem ama pet. A raça é extremamente amável, muito companheira dos tutores e fica ainda mais alegre na presença de crianças. Se bem treinada, pode ser uma excelente companhia para gatos e outros animais. Certamente uma das principais características do Golden, que o torna um dos cães mais populares, é a sua alta sociabilidade e anseio por afeto. Pode-se dizer que foram feitos para a família e, por isso, precisam ficar junto a seu “bando humano”, dentro de casa, e pouco tempo sozinhos no quintal.")
                        .padding(.top, 20)
                    CardInformativeComponent(title: "Condição física", aboutBreed: "Os cães da raça Golden são muito ativos e robustos, sendo excelentes para atividades como cão-guia para cegos, ajudante de deficientes motores e guardião. Recomenda-se que pratiquem de 40 a 60 minutos de exercícios físicos diários, sejam caminhadas, corridas, brincadeiras ao ar livre ou jogos de buscar.")
                        .padding(.top, 20)
                    CardInformativeComponent(title: "Convivência", aboutBreed: "A raça é altamente inteligente e, por isso, com pouco esforço torna-se altamente capacitada para tarefas delicadas, como de auxílio a pessoas portadoras de deficiências, ou para conviver com crianças pequenas.")
                        .padding(.top, 20)
                    VStack {
                        QualityRatingComponent(quality: "Cão de Guarda", rating: 5)
                        QualityRatingComponent(quality: "Gosta de ficar sozinho", rating: 3)
                        QualityRatingComponent(quality: "Apego à Família", rating: 4)
                        QualityRatingComponent(quality: "Tendência a latir", rating: 2)
                    }
                    .padding(.top, 20)
                    .padding(.horizontal, 20)
                }
            }
        }
    }
}

#Preview {
    DetailBreedsView()
}
