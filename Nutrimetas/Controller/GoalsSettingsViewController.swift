//
//  GoalsSettingsViewController.swift
//  Nutrimetas
//
//  Created by Julio Rodriguez Reategui on 23/09/22.
//

import UIKit

class GoalsSettingsViewController: UIViewController {
    
    var someonesGoal = SomeonesGoal()
    
    //NSCoder file path set up
    let dataFilePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathExtension("Items.plist")

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
        
        let tabBar = tabBarController as! TabBarController
        print(dataFilePath!)

        saveGoalsButton.layer.cornerRadius = 5
        saveGoalsButton.layer.masksToBounds = true
        
        loadItems()
        
        stepperAlmidonValue.text = self.someonesGoal.almidones
        stepperAzucaresValue.text = self.someonesGoal.azucares
        stepperVerdurasValue.text = self.someonesGoal.verduras
        stepperFrutasValue.text = self.someonesGoal.frutas
        stepperLecheYYogurtValue.text = self.someonesGoal.lecheYYogurt
        stepperCarnesMagrasValue.text = self.someonesGoal.carnesMagras
        stepperCarnModGrasValue.text = self.someonesGoal.carModGras
        stepperCarnAltGrasValue.text = self.someonesGoal.carAltGras
        stepperGrasasValue.text = self.someonesGoal.grasas
        
        tabBar.almidonGoal = Int(self.someonesGoal.almidones)!
        tabBar.azucaresGoal = Int(self.someonesGoal.azucares)!
        tabBar.verdurasGoal = Int(self.someonesGoal.verduras)!
        tabBar.frutasGoal = Int(self.someonesGoal.frutas)!
        tabBar.lecheYYogurtGoal = Int(self.someonesGoal.lecheYYogurt)!
        tabBar.carnesMagrasGoal = Int(self.someonesGoal.carnesMagras)!
        tabBar.carnModGrasGoal = Int(self.someonesGoal.carModGras)!
        tabBar.carnAltGrasGoal = Int(self.someonesGoal.carAltGras)!
        tabBar.grasasGoal = Int(self.someonesGoal.grasas)!
    }
    
    //Stepper actions
    @IBAction func stepperGoalAlmidonChanged(_ sender: UIStepper) {
        stepperAlmidonValue.text = String(Int(sender.value) + Int(self.someonesGoal.almidones)!)
    }
    @IBAction func stepperGoalAzucaresChanged(_ sender: UIStepper) {
        stepperAzucaresValue.text = String(Int(sender.value) + Int(self.someonesGoal.azucares)!)
    }
    @IBAction func stepperGoalsVerdurasChanged(_ sender: UIStepper) {
        stepperVerdurasValue.text = String(Int(sender.value) + Int(self.someonesGoal.verduras)!)
    }
    @IBAction func stepperGoalsFrutasChanged(_ sender: UIStepper) {
        stepperFrutasValue.text = String(Int(sender.value) + Int(self.someonesGoal.frutas)!)
    }
    @IBAction func stepperGoalsLecheYYogurtChanged(_ sender: UIStepper) {
        stepperLecheYYogurtValue.text = String(Int(sender.value) + Int(self.someonesGoal.lecheYYogurt)!)
    }
    @IBAction func stepperGoalsCarnesMagrasChanged(_ sender: UIStepper) {
        stepperCarnesMagrasValue.text = String(Int(sender.value) + Int(self.someonesGoal.carnesMagras)!)
    }
    @IBAction func stepperGoalsCarnModGrasChanged(_ sender: UIStepper) {
        stepperCarnModGrasValue.text = String(Int(sender.value) + Int(self.someonesGoal.carModGras)!)
    }
    @IBAction func stepperGoalsCarnAltGrasChanged(_ sender: UIStepper) {
        stepperCarnAltGrasValue.text = String(Int(sender.value) + Int(self.someonesGoal.carAltGras)!)
    }
    @IBAction func stepperGoalsGrasasChanged(_ sender: UIStepper) {
        stepperGrasasValue.text = String(Int(sender.value) + Int(self.someonesGoal.grasas)!)
    }

    
    
    //Set goals action
    @IBAction func setGoalsButtonPressed(_ sender: UIButton) {
        
        let tabBar = tabBarController as! TabBarController
        
        self.someonesGoal.almidones = stepperAlmidonValue.text!
        self.someonesGoal.azucares = stepperAzucaresValue.text!
        self.someonesGoal.verduras = stepperVerdurasValue.text!
        self.someonesGoal.frutas = stepperFrutasValue.text!
        self.someonesGoal.lecheYYogurt = stepperLecheYYogurtValue.text!
        self.someonesGoal.carnesMagras = stepperCarnesMagrasValue.text!
        self.someonesGoal.carModGras = stepperCarnModGrasValue.text!
        self.someonesGoal.carAltGras = stepperCarnAltGrasValue.text!
        self.someonesGoal.grasas = stepperGrasasValue.text!
        
        saveItems()
        
        tabBar.almidonGoal = Int(self.someonesGoal.almidones)!
        tabBar.azucaresGoal = Int(self.someonesGoal.azucares)!
        tabBar.verdurasGoal = Int(self.someonesGoal.verduras)!
        tabBar.frutasGoal = Int(self.someonesGoal.frutas)!
        tabBar.lecheYYogurtGoal = Int(self.someonesGoal.lecheYYogurt)!
        tabBar.carnesMagrasGoal = Int(self.someonesGoal.carnesMagras)!
        tabBar.carnModGrasGoal = Int(self.someonesGoal.carModGras)!
        tabBar.carnAltGrasGoal = Int(self.someonesGoal.carAltGras)!
        tabBar.grasasGoal = Int(self.someonesGoal.grasas)!
        
    }
    
    //MARK: - Model MAnipulation methods
    
    func saveItems() {
        
        let encoder  = PropertyListEncoder()
        
        do{
            let data = try encoder.encode(someonesGoal)
            try data.write(to: dataFilePath!)
        }catch{
            print("Error catching someonesGoal \(error)")
        }
    }
    
    
    func loadItems() {
        
        if let data = try? Data(contentsOf: dataFilePath!){
            let decoder = PropertyListDecoder()
            do{
                someonesGoal = try decoder.decode(SomeonesGoal.self, from: data)
            }catch{
                print("Error decoding someonesGoal \(error)")
            }
        }
    }
}
