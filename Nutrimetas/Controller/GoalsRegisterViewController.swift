//
//  ViewController.swift
//  Nutrimetas
//
//  Created by Julio Rodriguez Reategui on 23/09/22.
//

import UIKit

class GoalsRegisterViewController: UIViewController {
    
    var message = "Bien hecho!!"
    
    var goalsBrain = GoalsBrain()
    
    var consumptionArray = ["0", "0", "0", "0", "0", "0", "0", "0", "0"]
    
    var comparissonFlag = [false]
    
    let defaults = UserDefaults.standard
    
    //Clear and Register Button Outlets
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    //Goal Labels
    @IBOutlet weak var goalLabelAlmidon: UILabel!
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

    override func viewDidLoad() {
        super.viewDidLoad()
        clearButton.layer.cornerRadius = 5
        clearButton.layer.masksToBounds = true
        registerButton.layer.cornerRadius = 5
        registerButton.layer.masksToBounds = true
        
        if let consumption = defaults.array(forKey: "ConsumptionArray") as? [String] {
            self.consumptionArray = consumption
        }
        
        if let flag = defaults.array(forKey: "ConsumptionFlag") as? [Bool] {
            self.comparissonFlag = flag
        }
        
        stepperLabelAlmidon.text = consumptionArray[0]
        stepperAlmidon.value = Double(consumptionArray[0])!
        
        stepperLabelAzucares.text = consumptionArray[1]
        stepperAzucares.value = Double(consumptionArray[1])!
        
        stepperLabelVerduras.text = consumptionArray[2]
        stepperVerduras.value = Double(consumptionArray[2])!
        
        stepperLabelFrutas.text = consumptionArray[3]
        stepperFrutas.value = Double(consumptionArray[3])!

        stepperLabelLecheYYogurt.text = consumptionArray[4]
        stepperLecheYYogurt.value = Double(consumptionArray[4])!

        stepperLabelCarnesMagras.text = consumptionArray[5]
        stepperCarnesMagras.value = Double(consumptionArray[5])!

        stepperLabelCarnesModGras.text = consumptionArray[6]
        stepperCarnesModGras.value = Double(consumptionArray[6])!

        stepperLabelCarnesAltGras.text = consumptionArray[7]
        stepperCarnesAltGras.value = Double(consumptionArray[7])!

        stepperLabelGrasas.text = consumptionArray[8]
        stepperGrasas.value = Double(consumptionArray[8])!

    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let tabBar = tabBarController as! TabBarController
        
        goalLabelAlmidon.text = String(tabBar.almidonGoal)
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: Int(goalLabelAlmidon.text!)! , consumo: Int(stepperAlmidon.value))
        colorChange(nutriente: stepperLabelAlmidon, flag: goalsBrain.flag)
        
        goalLabelAzucares.text = String(tabBar.azucaresGoal)
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: Int(goalLabelAzucares.text!)! , consumo: Int(stepperAzucares.value))
        colorChange(nutriente: stepperLabelAzucares, flag: goalsBrain.flag)
        
        goalLabelVerduras.text = String(tabBar.verdurasGoal)
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: Int(goalLabelVerduras.text!)! , consumo: Int(stepperVerduras.value))
        colorChange(nutriente: stepperLabelVerduras, flag: goalsBrain.flag)
        
        goalLabelFrutas.text = String(tabBar.frutasGoal)
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: Int(goalLabelFrutas.text!)! , consumo: Int(stepperFrutas.value))
        colorChange(nutriente: stepperLabelFrutas, flag: goalsBrain.flag)
        
        goalLabelLecheYYogurt.text = String(tabBar.lecheYYogurtGoal)
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: Int(goalLabelLecheYYogurt.text!)! , consumo: Int(stepperLecheYYogurt.value))
        colorChange(nutriente: stepperLabelLecheYYogurt, flag: goalsBrain.flag)
        
        goalLabelCarnesMagras.text = String(tabBar.carnesMagrasGoal)
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: Int(goalLabelCarnesMagras.text!)! , consumo: Int(stepperCarnesMagras.value))
        colorChange(nutriente: stepperLabelCarnesMagras, flag: goalsBrain.flag)
        
        goalLabelCarnesModGras.text = String(tabBar.carnModGrasGoal)
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: Int(goalLabelCarnesModGras.text!)! , consumo: Int(stepperCarnesModGras.value))
        colorChange(nutriente: stepperLabelCarnesModGras, flag: goalsBrain.flag)
        
        goalLabelCarnesAltGras.text = String(tabBar.carnAltGrasGoal)
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: Int(goalLabelCarnesAltGras.text!)! , consumo: Int(stepperCarnesAltGras.value))
        colorChange(nutriente: stepperLabelCarnesAltGras, flag: goalsBrain.flag)
        
        goalLabelGrasas.text = String(tabBar.grasasGoal)
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: Int(goalLabelGrasas.text!)! , consumo: Int(stepperGrasas.value))
        colorChange(nutriente: stepperLabelGrasas, flag: goalsBrain.flag)
    }
    
    //Stepper Actions
    
    @IBAction func stepperAlmidonChanged(_ sender: UIStepper) {
        stepperLabelAlmidon.text = String(Int(stepperAlmidon.value))
        self.consumptionArray[0] = String(Int(stepperAlmidon.value))
        
        //Save consumptionArray in userdefaults
        self.defaults.set(self.consumptionArray, forKey: "ConsumptionArray")

        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: Int(goalLabelAlmidon.text!)! , consumo: Int(stepperAlmidon.value))
        colorChange(nutriente: stepperLabelAlmidon, flag: goalsBrain.flag)
        self.comparissonFlag[0] = goalsBrain.flag
        
        //Save comparissonFlag in userdefaults
        self.defaults.set(self.comparissonFlag, forKey: "ConsumptionFlag")
        
    }
    
    @IBAction func stepperAzucarChanged(_ sender: UIStepper) {
        stepperLabelAzucares.text = String(Int(stepperAzucares.value))
        self.consumptionArray[1] = String(Int(stepperAzucares.value))
        
        //Save in userdefaults
        self.defaults.set(self.consumptionArray, forKey: "ConsumptionArray")
        
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: Int(goalLabelAzucares.text!)! , consumo: Int(stepperAzucares.value))
        colorChange(nutriente: stepperLabelAzucares, flag: goalsBrain.flag)
        self.comparissonFlag[0] = goalsBrain.flag
        
        //Save comparissonFlag in userdefaults
        self.defaults.set(self.comparissonFlag, forKey: "ConsumptionFlag")
        
    }
    
    @IBAction func stepperVerdurasChanged(_ sender: UIStepper) {
        stepperLabelVerduras.text = String(Int(stepperVerduras.value))
        self.consumptionArray[2] = String(Int(stepperVerduras.value))
        
        //Save in userdefaults
        self.defaults.set(self.consumptionArray, forKey: "ConsumptionArray")
        
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: Int(goalLabelVerduras.text!)! , consumo: Int(stepperVerduras.value))
        colorChange(nutriente: stepperLabelVerduras, flag: goalsBrain.flag)
        self.comparissonFlag[0] = goalsBrain.flag
        
        //Save comparissonFlag in userdefaults
        self.defaults.set(self.comparissonFlag, forKey: "ConsumptionFlag")
        
    }
    
    @IBAction func stepperFrutasChanged(_ sender: UIStepper) {
        stepperLabelFrutas.text = String(Int(stepperFrutas.value))
        self.consumptionArray[3] = String(Int(stepperFrutas.value))
        
        //Save in userdefaults
        self.defaults.set(self.consumptionArray, forKey: "ConsumptionArray")
        
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: Int(goalLabelFrutas.text!)! , consumo: Int(stepperFrutas.value))
        colorChange(nutriente: stepperLabelFrutas, flag: goalsBrain.flag)
        self.comparissonFlag[0] = goalsBrain.flag
        
        //Save comparissonFlag in userdefaults
        self.defaults.set(self.comparissonFlag, forKey: "ConsumptionFlag")
    }
    
    @IBAction func stepperLecheYYogurtChanged(_ sender: UIStepper) {
        stepperLabelLecheYYogurt.text = String(Int(stepperLecheYYogurt.value))
        self.consumptionArray[4] = String(Int(stepperLecheYYogurt.value))
        
        //Save in userdefaults
        self.defaults.set(self.consumptionArray, forKey: "ConsumptionArray")
        
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: Int(goalLabelLecheYYogurt.text!)! , consumo: Int(stepperLecheYYogurt.value))
        colorChange(nutriente: stepperLabelLecheYYogurt, flag: goalsBrain.flag)
        self.comparissonFlag[0] = goalsBrain.flag
        
        //Save comparissonFlag in userdefaults
        self.defaults.set(self.comparissonFlag, forKey: "ConsumptionFlag")
    }
    
    @IBAction func stepperCarnesMagrasChanged(_ sender: UIStepper) {
        stepperLabelCarnesMagras.text = String(Int(stepperCarnesMagras.value))
        self.consumptionArray[5] = String(Int(stepperCarnesMagras.value))
        
        //Save in userdefaults
        self.defaults.set(self.consumptionArray, forKey: "ConsumptionArray")
        
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: Int(goalLabelCarnesMagras.text!)! , consumo: Int(stepperCarnesMagras.value))
        colorChange(nutriente: stepperLabelCarnesMagras, flag: goalsBrain.flag)
        self.comparissonFlag[0] = goalsBrain.flag
        
        //Save comparissonFlag in userdefaults
        self.defaults.set(self.comparissonFlag, forKey: "ConsumptionFlag")
    }
    
    @IBAction func stepperCarnesModGrasChanged(_ sender: UIStepper) {
        stepperLabelCarnesModGras.text = String(Int(stepperCarnesModGras.value))
        self.consumptionArray[6] = String(Int(stepperCarnesModGras.value))
        
        //Save in userdefaults
        self.defaults.set(self.consumptionArray, forKey: "ConsumptionArray")
        
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: Int(goalLabelCarnesModGras.text!)! , consumo: Int(stepperCarnesModGras.value))
        colorChange(nutriente: stepperLabelCarnesModGras, flag: goalsBrain.flag)
        self.comparissonFlag[0] = goalsBrain.flag
        
        //Save comparissonFlag in userdefaults
        self.defaults.set(self.comparissonFlag, forKey: "ConsumptionFlag")
    }
    
    @IBAction func stepperCarnesAltGrasChanged(_ sender: UIStepper) {
        stepperLabelCarnesAltGras.text = String(Int(stepperCarnesAltGras.value))
        self.consumptionArray[7] = String(Int(stepperCarnesAltGras.value))
        
        //Save in userdefaults
        self.defaults.set(self.consumptionArray, forKey: "ConsumptionArray")
        
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: Int(goalLabelCarnesAltGras.text!)! , consumo: Int(stepperCarnesAltGras.value))
        colorChange(nutriente: stepperLabelCarnesAltGras, flag: goalsBrain.flag)
        self.comparissonFlag[0] = goalsBrain.flag
        
        //Save comparissonFlag in userdefaults
        self.defaults.set(self.comparissonFlag, forKey: "ConsumptionFlag")
    }
    
    @IBAction func stepperGrasasChanged(_ sender: UIStepper) {
        stepperLabelGrasas.text = String(Int(stepperGrasas.value))
        self.consumptionArray[8] = String(Int(stepperGrasas.value))
        
        //Save in userdefaults
        self.defaults.set(self.consumptionArray, forKey: "ConsumptionArray")
        
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: Int(goalLabelGrasas.text!)! , consumo: Int(stepperGrasas.value))
        colorChange(nutriente: stepperLabelGrasas, flag: goalsBrain.flag)
        self.comparissonFlag[0] = goalsBrain.flag
        
        //Save comparissonFlag in userdefaults
        self.defaults.set(self.comparissonFlag, forKey: "ConsumptionFlag")
    }
    
    
    //Clean and Register Buttons
    
    @IBAction func cleanButtonPressed(_ sender: UIButton) {
        
        stepperAlmidon.value = 0
        stepperLabelAlmidon.text = "0"
        
        stepperAzucares.value = 0
        stepperLabelAzucares.text = "0"
        
        stepperVerduras.value = 0
        stepperLabelVerduras.text = "0"
        
        stepperFrutas.value = 0
        stepperLabelFrutas.text = "0"
        
        stepperLecheYYogurt.value = 0
        stepperLabelLecheYYogurt.text = "0"
        
        stepperCarnesMagras.value = 0
        stepperLabelCarnesMagras.text = "0"
        
        stepperCarnesModGras.value = 0
        stepperLabelCarnesModGras.text = "0"
        
        stepperCarnesAltGras.value = 0
        stepperLabelCarnesAltGras.text = "0"
        
        stepperGrasas.value = 0
        stepperLabelGrasas.text = "0"
        
        consumptionArray = ["0", "0", "0", "0", "0", "0", "0", "0", "0"]
        self.defaults.set(self.consumptionArray, forKey: "ConsumptionArray")
        
        comparissonFlag = [false]
        self.defaults.set(self.comparissonFlag, forKey: "ConsumptionFlag")
        
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        if self.comparissonFlag[0] == false {
            self.message = "Bien Hecho!!"
        }else{
            self.message = "Mal Hecho!!"
        }
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.message = self.message
        }
    }
    
    func colorChange(nutriente: UILabel, flag: Bool){
        if flag == true {
            nutriente.textColor = .red
        }else{
            nutriente.textColor = .blue
        }
    }
    
}

