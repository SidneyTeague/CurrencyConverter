//
//  CurrencyConverterViewController.swift
//  CurrencyConverter
//
//  Created by Sidney Teague on 7/9/23.
//

import UIKit

class CurrencyConverterViewController: UIViewController {

	@IBOutlet weak var C1Amount: UILabel!
	@IBOutlet weak var C2Amount: UILabel!
	@IBOutlet weak var C3Amount: UILabel!
	@IBOutlet weak var C4Amount: UILabel!
	var euro: String = ""
	var pound: String = ""
	var cad: String = ""
	var yen: String = ""

	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		if euro.isEmpty {
			C1Amount.isHidden = true
		}else {
			C1Amount.text = "\(euro)"
		}
		if pound.isEmpty {
			C2Amount.isHidden = true
		}else {
			C2Amount.text = "\(pound)"
		}
		if cad.isEmpty {
			C3Amount.isHidden = true
		}else {
			C3Amount.text = "\(cad)"
		}
		if yen.isEmpty {
			C4Amount.isHidden = true
		}else {
			C4Amount.text = "\(yen)"
		}
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
