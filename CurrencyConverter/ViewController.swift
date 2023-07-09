//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Sidney Teague on 7/8/23.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var CurrencyTF: UITextField!
	@IBOutlet weak var CurrencyS1: UISwitch!
	@IBOutlet weak var ConvertButton: UIButton!
	@IBOutlet weak var errorLabel: UILabel!
	@IBOutlet weak var CurrencyS2: UISwitch!
	@IBOutlet weak var CurrencyS3: UISwitch!
	@IBOutlet weak var CurrencyS4: UISwitch!
	
	var euro: String = ""
	var pound: String = ""
	var cad: String = ""
	var yen: String = ""
	
	override func viewDidLoad() {
		super.viewDidLoad()
		errorLabel.isHidden = true
		// Do any additional setup after loading the view.
	}
	
	
	func ConvertToEuro(amount: Int) -> String {
		
		let euroRate: Float = 0.91
		let convertEuro = String(Float(amount)/euroRate)
		return convertEuro
	}
	
	func ConvertToPound(amount: Int) -> String {
		
		let poundRate: Float = 0.78
		let convertPound = String(Float(amount)/poundRate)
		return convertPound
	}
	
	func ConvertToCad(amount: Int) -> String {
		
		let cadRate: Float = 1.33
		let convertCAD = String(Float(amount)/cadRate)
		return convertCAD
	}
	
	func ConvertToYen(amount: Int) -> String {
		
		let yenRate: Float = 142.08
		let convertYen = String(Float(amount)/yenRate)
		return convertYen
	}
	
	@IBAction func ConvertPressed(_ sender: UIButton) {
		guard let amountText = CurrencyTF.text else {
			return
		}
		
		if let currencyOG = Int(amountText){
			errorLabel.isHidden = true
			if CurrencyS1.isOn == true {
				euro = ConvertToEuro(amount: currencyOG)
				self.performSegue(withIdentifier: "toCurrencyConverter", sender: self)
			} else if CurrencyS2.isOn == true {
				pound = ConvertToPound(amount: currencyOG)
				self.performSegue(withIdentifier: "toCurrencyConverter", sender: self)
			} else if CurrencyS3.isOn == true {
				pound = ConvertToCad(amount: currencyOG)
				self.performSegue(withIdentifier: "toCurrencyConverter", sender: self)
			} else if CurrencyS4.isOn == true {
				pound = ConvertToYen(amount: currencyOG)
				self.performSegue(withIdentifier: "toCurrencyConverter", sender: self)
		} else {
			errorLabel.isHidden = false
			errorLabel.text = "Invalid input. Please enter an integer."
			CurrencyTF.text = ""
			return
			}
		}
	}
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
			if segue.identifier == "toCurrencyConverter" {
				let currencyConverter = segue.destination as! CurrencyConverterViewController
				currencyConverter.euro = euro
				currencyConverter.pound = pound
				currencyConverter.cad = cad
				currencyConverter.yen = yen
			}
		
	}
	

}
