//
//  Home.swift
//  WeatherApp
//
//  Created by Burak Cüce on 14.03.22.
//

import SwiftUI

struct Home: View {
    
    @ObservedObject var viewModel: WeatherViewModel
    
    var body: some View {
        
            
            ZStack {
                Color("background")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {

                VStack {
                    
                    Spacer()
                                        
                    LocationView(viewModel: WeatherViewModel(weatherService: WeatherService()))
                    
                    Spacer()
                    
                    DegreeView(viewModel: WeatherViewModel(weatherService: WeatherService()))
                    
                   
                    
                }
                
                }.onAppear(perform: viewModel.refresh)
            
        }
        
        
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(viewModel: WeatherViewModel(weatherService: WeatherService()))
    }
}
