//
//  TimeView.swift
//  WeatherApp
//
//  Created by Burak Cüce on 14.03.22.
//

import SwiftUI

struct TimeView: View {
    var body: some View {
        
        ScrollView (.horizontal, showsIndicators: false) {
            
            HStack {
                
                ForEach (0..<15) { item in
                    
                    VStack {
                                                
                        Text("Jetzt")
                        
                        Image(systemName: "sun.max.fill")
                            .foregroundColor(.yellow)
                        
                        Text("25°")
                        
                    
                }
            }
                
            }
            .padding(.all)
            .background(Color("background"))
            .foregroundColor(.white)
            
        }
        
    }
}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
    }
}
