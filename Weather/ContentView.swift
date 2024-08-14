//
//  ContentView.swift
//  Weather
//
//  Created by Abdullah Bin Essa on 8/13/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack {
            Backgroundview(isNight: $isNight)
            VStack{
                CityTextView(CityName: "Cupertino, CA")
                MainTempView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 77  )
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
                    isNight.toggle()
                }label: {
                    WeatherButton(title: "Change Day Time", textColor: Color.blue, backgroundColor: Color.white )
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
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all )
    }
}
struct CityTextView: View {
    var CityName: String
    var body: some View {
        Text(CityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()    }
}
struct MainTempView: View {
    var imageName: String
    var temperature: Int

    var body: some View {
        VStack(spacing: 8){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill )
                .frame(width: 180, height: 180
                 )
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white )
        }
        .padding(.bottom, 40 )
    }
}

