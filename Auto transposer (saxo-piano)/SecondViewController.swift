//
//  SecondViewController.swift
//  Auto transposer (saxo-piano)
//
//  Created by Ghaly Sekkat on 04/03/2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var toSax: UITextField!
    
    @IBOutlet weak var resultSax: UILabel!
    
    @IBAction func translatingToSax(_ sender: Any) {
        resultSax.text! = fromPianoToSax(pianoNotes: toSax.text!)
    }
    
}
