//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by José Eduardo Kotásek Reyna on 8/10/18.
//  Copyright © 2018 José Eduardo Kotásek Reyna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfFahrenheit: UITextField!
    @IBOutlet weak var tfCelsius: UITextField!
    
    let converter = TemperatureConverter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convert(_ sender: UIButton) {
        let gradosF = tfFahrenheit.text
        if gradosF != nil {
            let fahrenheit = gradosF!
            let valorGF = Double(fahrenheit)
            if let dF = valorGF {
                converter.fahrenheit = dF
                converter.convert()
                let dC = converter.celsius
                tfCelsius.text = "\(dC)"
            }
        }
    }
    
    
    
}

