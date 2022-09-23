//
//  ViewController.swift
//  Nutrimetas
//
//  Created by Julio Rodriguez Reategui on 23/09/22.
//

import UIKit

class GoalsRegister: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Goal Labels
    @IBOutlet weak var goalaLabelAlmidon: UILabel!
    @IBOutlet weak var goalLabelAzucares: UILabel!
    @IBOutlet weak var goalLabelVerduras: UILabel!
    @IBOutlet weak var goalLabelFrutas: UILabel!
    @IBOutlet weak var goalLabelLecheYYogurt: UILabel!
    @IBOutlet weak var goalLabelCarnesMagras: UILabel!
    @IBOutlet weak var goalLabelCarnesModGras: UILabel!
    @IBOutlet weak var goalLabelCarnesAltGras: UILabel!
    @IBOutlet weak var goalLabelGrasas: UILabel!
    
    
    //Stepper Outlets
    @IBOutlet weak var stepperAlmidon: UIStepper!
    @IBOutlet weak var stepperAzucares: UIStepper!
    @IBOutlet weak var stepperVerduras: UIStepper!
    @IBOutlet weak var stepperFrutas: UIStepper!
    @IBOutlet weak var stepperLecheYYogurt: UIStepper!
    @IBOutlet weak var stepperCarnesMagras: UIStepper!
    @IBOutlet weak var stepperCarnesModGras: UIStepper!
    @IBOutlet weak var stepperCarnesAltGras: UIStepper!
    @IBOutlet weak var stepperGrasas: UIStepper!
    
    //Stepper Labels
    @IBOutlet weak var stepperLabelAlmidon: UILabel!
    @IBOutlet weak var stepperLabelAzucares: UILabel!
    @IBOutlet weak var stepperLabelVerduras: UILabel!
    @IBOutlet weak var stepperLabelFrutas: UILabel!
    @IBOutlet weak var stepperLabelLecheYYogurt: UILabel!
    @IBOutlet weak var stepperLabelCarnesMagras: UILabel!
    @IBOutlet weak var stepperLabelCarnesModGras: UILabel!
    @IBOutlet weak var stepperLabelCarnesAltGras: UILabel!
    @IBOutlet weak var stepperLabelGrasas: UILabel!
    
    //Stepper Actions
    
    @IBAction func stepperAlmidonChanged(_ sender: UIStepper) {
    }
    
    @IBAction func stepperAzucarChanged(_ sender: UIStepper) {
    }
    
    @IBAction func stepperVerdurasChanged(_ sender: UIStepper) {
    }
    
    @IBAction func stepperFrutasChanged(_ sender: UIStepper) {
    }
    
    @IBAction func stepperLecheYYogurtChanged(_ sender: UIStepper) {
    }
    
    @IBAction func stepperCarnesMagrasChanged(_ sender: UIStepper) {
    }
    
    @IBAction func stepperCarnesModGrasChanged(_ sender: UIStepper) {
    }
    
    @IBAction func stepperCarnesAltGrasChanged(_ sender: UIStepper) {
    }
    
    @IBAction func stepperGrasas(_ sender: UIStepper) {
    }
    
    //Clean and Register Buttons
    
    @IBAction func cleanButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
    }
    
}

