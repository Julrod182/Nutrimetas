//
//  GoalsSettingsViewController.swift
//  Nutrimetas
//
//  Created by Julio Rodriguez Reategui on 23/09/22.
//

import UIKit

class GoalsSettingsViewController: UIViewController {

    //Meal values
    @IBOutlet weak var stepperAlmidonValue: UILabel!
    @IBOutlet weak var stepperAzucaresValue: UILabel!
    @IBOutlet weak var stepperVerdurasValue: UILabel!
    @IBOutlet weak var stepperFrutasValue: UILabel!
    @IBOutlet weak var stepperLecheYYogurtValue: UILabel!
    @IBOutlet weak var stepperCarnesMagrasValue: UILabel!
    @IBOutlet weak var stepperCarnModGrasValue: UILabel!
    @IBOutlet weak var stepperCarnAltGrasValue: UILabel!
    @IBOutlet weak var stepperGrasasValue: UILabel!
    
    //Stepper values
    @IBOutlet weak var almidonController: UIStepper!
    @IBOutlet weak var azucaresController: UIStepper!
    @IBOutlet weak var verdurasController: UIStepper!
    @IBOutlet weak var frutasController: UIStepper!
    @IBOutlet weak var lecheYYogurtController: UIStepper!
    @IBOutlet weak var carnesMagrasController: UIStepper!
    @IBOutlet weak var carnModGrasController: UIStepper!
    @IBOutlet weak var carnAltGrasController: UIStepper!
    @IBOutlet weak var grasasController: UIStepper!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //Stepper actions
    @IBAction func stepperGoalAlmidonChanged(_ sender: UIStepper) {
        stepperAlmidonValue.text = String(Int(almidonController.value))
    }
    @IBAction func stepperGoalAzucaresChanged(_ sender: UIStepper) {
        stepperAzucaresValue.text = String(Int(azucaresController.value))
    }
    @IBAction func stepperGoalsVerdurasChanged(_ sender: UIStepper) {
        stepperVerdurasValue.text = String(Int(verdurasController.value))
    }
    @IBAction func stepperGoalsFrutasChanged(_ sender: UIStepper) {
        stepperFrutasValue.text = String(Int(frutasController.value))
    }
    @IBAction func stepperGoalsLecheYYogurtChanged(_ sender: UIStepper) {
        stepperLecheYYogurtValue.text = String(Int(lecheYYogurtController.value))
    }
    @IBAction func stepperGoalsCarnesMagrasChanged(_ sender: UIStepper) {
        stepperCarnesMagrasValue.text = String(Int(carnesMagrasController.value))
    }
    @IBAction func stepperGoalsCarnModGrasChanged(_ sender: UIStepper) {
        stepperCarnModGrasValue.text = String(Int(carnModGrasController.value))
    }
    @IBAction func stepperGoalsCarnAltGrasChanged(_ sender: UIStepper) {
        stepperCarnAltGrasValue.text = String(Int(carnAltGrasController.value))
    }
    @IBAction func stepperGoalsGrasasChanged(_ sender: UIStepper) {
        stepperGrasasValue.text = String(Int(grasasController.value))
    }
    
    //Set goals action
    @IBAction func setGoalsButtonPressed(_ sender: UIButton) {
    }
    
}
