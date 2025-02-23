//
//  ContentView.swift
//  HelloSwift
//
//  Created by Divya on 18/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight: Bool = false
    var body: some View {
        ZStack{
            BackGroundView(isNight: $isNight)
            VStack() {
                CityExtractedView(city: "Cuperino, CA")
                MiddleDataExtractedView(temperature:"74°" , icon: "cloud.sun.fill")
                
                HStack(spacing:10){
                    WaetherDayExtractedView(day: "TUE", temperature: "74°", icon:"cloud.sun.fill" )
                    WaetherDayExtractedView(day: "WED", temperature: "76°", icon:"sun.max.fill" )
                    WaetherDayExtractedView(day: "THU", temperature: "78°", icon:"wind.snow" )
                    WaetherDayExtractedView(day: "FRI", temperature: "72°", icon:"sunset.fill" )
                    WaetherDayExtractedView(day: "SAT", temperature: "76°", icon:"snow" )
                }
                Spacer()
                Button{
                    print("Button tapped")
                    isNight.toggle()
                }label: {
                    WeatherButton(title: "Change Day time")
                       
                    
                }
                .padding(.bottom,20)
               
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}

struct WaetherDayExtractedView: View {
    var day: String
    var temperature: String
    var icon: String
    var body: some View {
        VStack{
            Text(day)
                .font(.system(size: 25))
                .fontWeight(.medium)
                .fontDesign(.default)
                .foregroundColor(.white)
            
            Image(systemName: icon)
                .renderingMode(.original)
                .resizable()
                .foregroundColor(.white)
            
                .frame(width: 40, height:40)
            

            Text(temperature)
                .font(.system(size: 25))
                .fontWeight(.bold)
                .fontDesign(.default)
                .foregroundColor(.white)
            
        }
        Spacer()
           
    
    }
}

struct MiddleDataExtractedView: View {
    var temperature: String
    var icon: String
    var body: some View {
        VStack(spacing:10){
            Image(systemName:icon)
                .renderingMode(.original)
                .resizable()
                .foregroundColor(.blue)
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text(temperature)
                .font(.system(size: 60))
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
       
        .padding(.bottom, 60)
    }
}

struct CityExtractedView: View {
    var city: String = ""
    var body: some View {
        Text(city)
            .font(.system(size: 32))
            .fontWeight(.medium)
            .fontDesign(.default)
            .foregroundColor(.white)
            .padding()
    }
}

struct BackGroundView: View {
    @Binding var isNight : Bool
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? . black :.blue, isNight ? .gray :.lightBlue]), startPoint:.topLeading, endPoint: .bottomLeading)
            .edgesIgnoringSafeArea(.all)
    }
}
