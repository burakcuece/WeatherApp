//
//  UIApplication+Extension.swift
//  WeatherApp
//
//  Created by Burak Cüce on 20.03.22.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
