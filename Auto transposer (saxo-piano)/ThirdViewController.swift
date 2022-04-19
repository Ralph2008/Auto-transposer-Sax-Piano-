//
//  ThirdViewController.swift
//  Auto transposer (saxo-piano)
//
//  Created by Ghaly Sekkat on 04/03/2022.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var toPiano: UITextField!
    
    @IBOutlet weak var resultPiano: UILabel!
    
    @IBAction func translatingPiano(_ sender: Any) {
        resultPiano.text! = fromSaxToPiano(saxoNotes: toPiano.text!)
    }
    
}
