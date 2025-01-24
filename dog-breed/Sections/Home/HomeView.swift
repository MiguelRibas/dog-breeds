//
//  HomeView.swift
//  dog-breed
//
//  Created by miguelribas on 21/01/25.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Image("bull_breed")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                Text("The Dog Breeds")
                    .font(.headline)
                
                Spacer()
                
                NavigationLink(destination: ContentView()) {
                    Text("Ver raças")
                        .font(.system(size: 20, weight: .semibold))
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(24)
                }
                
            }
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    HomeView()
}
