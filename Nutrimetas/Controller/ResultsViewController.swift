//
//  ResultsViewController.swift
//  Nutrimetas
//
//  Created by Julio Rodriguez Reategui on 24/09/22.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var message: String = "Bien hecho!!"
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButton.layer.cornerRadius = 5
        backButton.layer.masksToBounds = true
        messageLabel.text = message
        
    }
    

    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }


}
