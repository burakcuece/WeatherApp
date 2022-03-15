//
//  DayView.swift
//  WeatherApp
//
//  Created by Burak Cüce on 15.03.22.
//

import SwiftUI

struct DayView: View {
    var body: some View {
        
        
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
        
        VStack  {
            
            HStack (spacing: 130) {
                
                Text("Heute")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    
                
                VStack {
                    
                    Image(systemName: "sun.max.fill")
                        .foregroundColor(.yellow)
                    
                    Text("25°")
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                    
                }
                
            }
            .padding(.all)
            
            HStack (spacing: 120) {
                
                Text("Morgen")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                
                    
                
                VStack {
                    
                    Image(systemName: "sun.max.fill")
                        .foregroundColor(.yellow)

                    
                    Text("25°")
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                    
                }
                

            }
            .padding(.all)
            
            HStack (spacing: 85) {
                
                Text("Übermorgen")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    
                
                
                VStack {
                    
                    Image(systemName: "sun.max.fill")
                        .foregroundColor(.yellow)

                    
                    Text("25°")
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                    
                }
                

            }

        }
        
        
        }
        
        
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView()
    }
}
