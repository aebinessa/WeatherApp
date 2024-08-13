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
            Backgroundview(topColor: .blue, bottomColor: Color("lightBlue "))
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 8){
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
                .padding(.bottom, 40 )
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "MON", imageName: "cloud.sun.fill", temperature: 67)
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 34)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.sun.fill", temperature: 90)
                    WeatherDayView(dayOfWeek: "THU", imageName: "sun.max.fill", temperature: 49)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "wind", temperature: 30)
                }
                
                Spacer()
                
                Button{
                    print("Tapped")
                }label: {
                    Text("change Day time")
                    .frame(width: 280,height: 50)
                    .background(Color.white)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .cornerRadius(10)
                }
                
                Spacer()
                
                 
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek).font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit )
                .frame(width: 40, height: 40
                )
            
            Text("\(temperature)°")
                .font(.system(size: 28))
                .foregroundColor(.white)
        }
    }
}

struct  Backgroundview: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor  ]), startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all )
    }
}
