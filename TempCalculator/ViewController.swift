//
//  ViewController.swift
//  TempCalculator
//
//  Created by Jonathan Lace on 3/18/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //This app is now under source control via GitHub.
    
    @IBOutlet weak var fahrenheitLabel: UILabel!
    
    @IBOutlet weak var celsiusLabel: UILabel!
    
    @IBOutlet weak var cToFtextField: UITextField!
    
    @IBOutlet weak var fToCtextField: UITextField!
    

    
    @IBAction func convertToF(_ sender: Any) {
        
        let numberString = cToFtextField.text!
        let number = Double(numberString)
        
        let fahrenheitResult = (number!) * 1.8 + 32
        let roundedFahrenheit = round(fahrenheitResult * 10) / 10
        
        fahrenheitLabel.text = "\(numberString) degrees Celsius is \(String(roundedFahrenheit)) degrees Fahrenheit."
        
    }
    
    
    @IBAction func convertToC(_ sender: Any) {
        
        let numberString = fToCtextField.text!
        let number = Double(numberString)
        
        let celsiusResult = (number! - 32) * 5/9
        let roundedCelsius = round(celsiusResult * 10) / 10
        
        celsiusLabel.text = "\(numberString) degrees Fahrenheit is \(String(roundedCelsius)) degrees Celsius."
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        cToFtextField.delegate = self
        fToCtextField.delegate = self
        
    }
    


   func textFieldShouldClear(_ textField: UITextField) -> Bool {
        fahrenheitLabel.text = ""
        celsiusLabel.text = ""
       
       return true
    }
 
    
}

