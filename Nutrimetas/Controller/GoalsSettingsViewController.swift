//
//  GoalsSettingsViewController.swift
//  Nutrimetas
//
//  Created by Julio Rodriguez Reategui on 23/09/22.
//

import UIKit

class GoalsSettingsViewController: UIViewController {

    //Save button
    @IBOutlet weak var saveGoalsButton: UIButton!
    
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

        saveGoalsButton.layer.cornerRadius = 5
        saveGoalsButton.layer.masksToBounds = true
    }
    
    //Stepper actions
    @IBAction func stepperGoalAlmidonChanged(_ sender: UIStepper) {
        stepperAlmidonValue.text = String(Int(sender.value))
    }
    @IBAction func stepperGoalAzucaresChanged(_ sender: UIStepper) {
        stepperAzucaresValue.text = String(Int(sender.value))
    }
    @IBAction func stepperGoalsVerdurasChanged(_ sender: UIStepper) {
        stepperVerdurasValue.text = String(Int(sender.value))
    }
    @IBAction func stepperGoalsFrutasChanged(_ sender: UIStepper) {
        stepperFrutasValue.text = String(Int(sender.value))
    }
    @IBAction func stepperGoalsLecheYYogurtChanged(_ sender: UIStepper) {
        stepperLecheYYogurtValue.text = String(Int(sender.value))
    }
    @IBAction func stepperGoalsCarnesMagrasChanged(_ sender: UIStepper) {
        stepperCarnesMagrasValue.text = String(Int(sender.value))
    }
    @IBAction func stepperGoalsCarnModGrasChanged(_ sender: UIStepper) {
        stepperCarnModGrasValue.text = String(Int(sender.value))
    }
    @IBAction func stepperGoalsCarnAltGrasChanged(_ sender: UIStepper) {
        stepperCarnAltGrasValue.text = String(Int(sender.value))
    }
    @IBAction func stepperGoalsGrasasChanged(_ sender: UIStepper) {
        stepperGrasasValue.text = String(Int(sender.value))
    }
    
    //Set goals action
    @IBAction func setGoalsButtonPressed(_ sender: UIButton) {
        
        let tabBar = tabBarController as! TabBarController
        
        tabBar.almidonGoal = Int(almidonController.value)
        tabBar.azucaresGoal = Int(azucaresController.value)
        tabBar.verdurasGoal = Int(verdurasController.value)
        tabBar.frutasGoal = Int(frutasController.value)
        tabBar.lecheYYogurtGoal = Int(lecheYYogurtController.value)
        tabBar.carnesMagrasGoal = Int(carnesMagrasController.value)
        tabBar.carnModGrasGoal = Int(carnModGrasController.value)
        tabBar.carnAltGrasGoal = Int(carnAltGrasController.value)
        tabBar.grasasGoal = Int(grasasController.value)
        
        
    }
    
}
