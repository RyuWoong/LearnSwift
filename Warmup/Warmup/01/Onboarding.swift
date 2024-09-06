//
//  Onboarding.swift
//  Warmup
//
//  Created by 박정륭 on 7/23/24.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        VStack {
            Text("What's New in Photos")
                .font(.system(size: 35))
                .bold()
                .padding()
            
            HStack {
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal, 7)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Shared Library")
                        .font(.headline)
                    Text("Combine photos and videos with the poeple Combine photos and videos with the poeple Combine photos and videos with the poeple")
                        .font(.subheadline)
                }.padding(.trailing)
            }
            
            HStack {
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal, 7)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Shared Library")
                        .font(.headline)
                    Text("Combine photos and videos with the poeple Combine photos and videos with the poeple Combine photos and videos with the poeple")
                        .font(.subheadline)
                }.padding(.trailing)
            }
            
            HStack {
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal, 7)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Shared Library")
                        .font(.headline)
                    Text("Combine photos and videos with the poeple Combine photos and videos with the poeple Combine photos and videos with the poeple")
                        .font(.subheadline)
                }.padding(.trailing)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Continue")
                    .padding()
                    .frame(width: 350)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
            }
            
        }.padding(.vertical, 40)
        
    }
}

#Preview {
    Onboarding()
}
