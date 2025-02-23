//
//  WeatherButton.swift
//  HelloSwift
//
//  Created by Divya on 23/02/25.
//

import SwiftUI

struct WeatherButton: View {
    var title: String = ""
    var body: some View {
       
        Text(title)
                .frame(width: 280, height: 50)
                .font(.system(size: 20))
                .fontWeight(.bold)
                .fontDesign(.default)
                .foregroundColor(.lightBlue)
                .background(Color.white)
                .cornerRadius(10)
               
            
    }
}

#Preview {
    WeatherButton()
}
