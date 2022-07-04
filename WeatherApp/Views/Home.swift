//
//  Home.swift
//  WeatherApp
//
//  Created by Burak Cüce on 14.03.22.
//

import SDWebImageSwiftUI
import SwiftUI

struct Home: View {
    
    
    @StateObject private var forecastListVM = ForecastListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    Picker(selection: $forecastListVM.system, label: Text("System")) {
                        Text("°C").tag(0)
                        Text("°F").tag(1)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .frame(width: 100)
                    .padding(.vertical)
                    HStack {
                        TextField("Ort eingeben", text: $forecastListVM.location, onCommit: {
                            forecastListVM.getWeatherForecast()
                        }).textFieldStyle(RoundedBorderTextFieldStyle())
                            .overlay(
                                Button(action: {
                                    forecastListVM.location = ""
                                    forecastListVM.getWeatherForecast()
                                }) {
                                    Image(systemName: "xmark.circle")
                                        .foregroundColor(.gray)
                                }
                                .padding(.horizontal),
                                alignment: .trailing
                            )
                        
                        Button {
                            forecastListVM.getWeatherForecast()
                        } label: {
                            Image(systemName: "magnifyingglass.circle.fill")
                                .font(.title3)
                        }
                    }
                    List(forecastListVM.forecasts, id: \.day) { day in
                        VStack(alignment: .leading) {
                            Text(day.day)
                                .fontWeight(.bold)
                            HStack(alignment: .center) {
                                WebImage(url: day.weatherIconURL)
                                    .resizable()
                                    .placeholder {
                                        Image(systemName: "hourglass")
                                    }
                                    .scaledToFit()
                                    .frame(width: 75)
                                VStack(alignment: .leading) {
                                    Text(day.overview)
                                        .font(.title2)
                                    HStack {
                                        Text(day.high)
                                        Text(day.low)
                                    }
                                    HStack {
                                        Text(day.clouds)
                                        Text(day.pop)
                                    }
                                    Text(day.humidity)
                                }
                            }
                        }
                    }
                    .listStyle(PlainListStyle())
                }
                .padding(.horizontal)
                .navigationTitle("Wetter")
                .alert(item: $forecastListVM.appError) { appAlert in
                    Alert(title: Text("Error"),
                          message: Text("""
                                \(appAlert.errorString)
                            Bitte versuchen Sie es später noch einmal!
                            """
                                       )
                    )
                }
            }
            if forecastListVM.isLoading {
                ZStack {
                    Color.white
                        .opacity(0.3)
                        .ignoresSafeArea()
                    ProgressView("Wetter abrufen")
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.systemBackground))
                        )
                }
                .shadow(radius: 10)
            }
        }
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .environment(\.locale, Locale(identifier: "ger"))

    }
}
