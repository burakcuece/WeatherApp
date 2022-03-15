//
//  DegreeView.swift
//  WeatherApp
//
//  Created by Burak Cüce on 14.03.22.
//

import SwiftUI

struct DegreeView: View {
    
    var body: some View {
        
        VStack {
            
            Text("25°")
                .fontWeight(.medium)
                .foregroundColor(.white)
                .font(.system(size: 90))
                
            Image(systemName: "sun.max.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundColor(.yellow)

            Text("sonnig")
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
        DegreeView()
    }
}
