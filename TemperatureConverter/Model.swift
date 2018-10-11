//
//  Modelo.swift
//  TemperatureConverter
//
//  Created by José Eduardo Kotásek Reyna on 11/10/18.
//  Copyright © 2018 José Eduardo Kotásek Reyna. All rights reserved.
//

class TemperatureConverter{
    var fahrenheit: Double = 0
    var celsius: Double = 0
    
    func convert() {
        celsius = (fahrenheit-32)*(5/9)
    }
}
