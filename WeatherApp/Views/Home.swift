//
//  Home.swift
//  WeatherApp
//
//  Created by Burak Cüce on 14.03.22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Spacer()
                
                LocationView()
                
                Spacer()
                
                DegreeView()
                
                Spacer()
                
                TimeView()
                
                Spacer()
                
                DayView()
                
                Spacer()
                
            }
            
        }
        
        
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
