//
//  DetailBreedsView.swift
//  dog-breed
//
//  Created by miguelribas on 22/01/25.
//

import SwiftUI

struct DetailBreedsView: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("golden")
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .padding(.top, 50)
                    .padding()
                    .background(Color.cyan)
                Text("Golden Retriever")
                    .font(.system(size: 30, weight: .semibold))
                    .padding(.top, 30)
                HStack {
                    Text("Sobre o Golden")
                        .foregroundColor(.gray)
                        .font(.system(size: 18, weight: .medium))
                        .padding(.top, 2)
                        .padding(.horizontal, 16)
                    Spacer()
                }
                Text("Além de serem utilizados muitas vezes como cachorros de terapia e cães-guia para cegos e pessoas com deficiências motoras, o Golden Retriever é um cachorro obediente. Apesar de ser muito ativo, ele consegue ficar bem em alguns momentos em que é preciso ter calmaria.")
                    .padding(.top, 2)
                    .padding(.horizontal, 16)
                HStack {
                    Text("Gosta de crianças?")
                        .foregroundColor(.gray)
                        .padding(.top, 20)
                        .padding(.horizontal, 16)
                    Spacer()
                    Text("Sim")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(Color.green)
                        .padding(.top, 20)
                        .padding(.horizontal, 16)
                }
                HStack {
                    Text("Nivel de energia:")
                        .foregroundColor(.gray)
                        .padding(.top, 2)
                        .padding(.horizontal, 16)
                    Spacer()
                }
                Spacer()
                
            }
        }
    }
}

#Preview {
    DetailBreedsView()
}
