//
//  LocationView.swift
//  WeatherApp
//
//  Created by Burak Cüce on 14.03.22.
//

import SwiftUI

struct LocationView: View {
    
    @ObservedObject var viewModel: WeatherViewModel
    
    var body: some View {
        
        HStack {
            
            Image(systemName: "location.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
            
            Text(viewModel.cityName)
                .foregroundColor(.white)
                .font(.system(size: 30))
                
                
            
                
        }
        .padding(.all)
        .background(Color("background"))
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView(viewModel: WeatherViewModel(weatherService: WeatherService()))
    }
}
