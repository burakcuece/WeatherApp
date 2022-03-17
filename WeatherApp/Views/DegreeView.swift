//
//  DegreeView.swift
//  WeatherApp
//
//  Created by Burak Cüce on 14.03.22.
//

import SwiftUI

struct DegreeView: View {
    
    @ObservedObject var viewModel: WeatherViewModel
    
    var body: some View {
        
        VStack {
            
            Text(viewModel.temperature)
                .fontWeight(.medium)
                .foregroundColor(.white)
                .font(.system(size: 90))
                
            Image(viewModel.weatherIcon)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundColor(.yellow)

            Text(viewModel.weatherDescription)
                .fontWeight(.light)
                .foregroundColor(.white)
                .font(.system(size: 30))

        }
        .padding(.all)
        .background(Color("background"))
        
    }
}

struct DegreeView_Previews: PreviewProvider {
    static var previews: some View {
        DegreeView(viewModel: WeatherViewModel(weatherService: WeatherService()))
    }
}
