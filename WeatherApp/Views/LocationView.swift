//
//  LocationView.swift
//  WeatherApp
//
//  Created by Burak Cüce on 14.03.22.
//

import SwiftUI

struct LocationView: View {
    var body: some View {
        
        HStack() {
            
            Image(systemName: "location.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .foregroundColor(.white)
            
            Text("Recklinghausen")
                .foregroundColor(.white)
                .font(.system(size: 45))
                
                
        }
        .background(Color("background"))
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
