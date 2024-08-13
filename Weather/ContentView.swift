//
//  ContentView.swift
//  Weather
//
//  Created by Abdullah Bin Essa on 8/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading,
                          endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all )
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack{
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill )
                        .frame(width: 180, height: 180
                         )
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white )
                        
                    
                    
                }
                Spacer()
                
                 
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
