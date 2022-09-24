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
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let tabBar = tabBarController as! TabBarController
        
        goalLabelAlmidon.text = String(tabBar.almidonGoal)
        goalLabelAzucares.text = String(tabBar.azucaresGoal)
        goalLabelVerduras.text = String(tabBar.verdurasGoal)
        goalLabelFrutas.text = String(tabBar.frutasGoal)
        goalLabelLecheYYogurt.text = String(tabBar.lecheYYogurtGoal)
        goalLabelCarnesMagras.text = String(tabBar.carnesMagrasGoal)
        goalLabelCarnesModGras.text = String(tabBar.carnModGrasGoal)
        goalLabelCarnesAltGras.text = String(tabBar.carnAltGrasGoal)
        goalLabelGrasas.text = String(tabBar.grasasGoal)
    }
    
    //Stepper Actions
    
    @IBAction func stepperAlmidonChanged(_ sender: UIStepper) {
        stepperLabelAlmidon.text = String(Int(sender.value))
        
        //Asignación de variables
        goalsBrain.macroNutrienteConsumido = Int(sender.value)
        let consumo = goalsBrain.macroNutrienteConsumido
        goalsBrain.macroNutrienteMeta = Int(goalLabelAlmidon.text!)!
        let meta = goalsBrain.macroNutrienteMeta
        
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: meta , consumo: consumo)
        if goalsBrain.flag == true {
            stepperLabelAlmidon.textColor = .red
        }else{
            stepperLabelAlmidon.textColor = .blue
        }
        
    }
    
    @IBAction func stepperAzucarChanged(_ sender: UIStepper) {
        stepperLabelAzucares.text = String(Int(sender.value))
        
        //Asignación de variables
        goalsBrain.macroNutrienteConsumido = Int(sender.value)
        let consumo = goalsBrain.macroNutrienteConsumido
        goalsBrain.macroNutrienteMeta = Int(goalLabelAzucares.text!)!
        let meta = goalsBrain.macroNutrienteMeta
        
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: meta , consumo: consumo)
        if goalsBrain.flag == true {
            stepperLabelAzucares.textColor = .red
        }else{
            stepperLabelAzucares.textColor = .blue
        }
        
    }
    
    @IBAction func stepperVerdurasChanged(_ sender: UIStepper) {
        stepperLabelVerduras.text = String(Int(sender.value))
        
        //Asignación de variables
        goalsBrain.macroNutrienteConsumido = Int(sender.value)
        let consumo = goalsBrain.macroNutrienteConsumido
        goalsBrain.macroNutrienteMeta = Int(goalLabelVerduras.text!)!
        let meta = goalsBrain.macroNutrienteMeta
        
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: meta , consumo: consumo)
        if goalsBrain.flag == true {
            stepperLabelVerduras.textColor = .red
        }else{
            stepperLabelVerduras.textColor = .blue
        }
        
    }
    
    @IBAction func stepperFrutasChanged(_ sender: UIStepper) {
        stepperLabelFrutas.text = String(Int(sender.value))
        
        //Asignación de variables
        goalsBrain.macroNutrienteConsumido = Int(sender.value)
        let consumo = goalsBrain.macroNutrienteConsumido
        goalsBrain.macroNutrienteMeta = Int(goalLabelFrutas.text!)!
        let meta = goalsBrain.macroNutrienteMeta
        
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: meta , consumo: consumo)
        if goalsBrain.flag == true {
            stepperLabelFrutas.textColor = .red
        }else{
            stepperLabelFrutas.textColor = .blue
        }
    }
    
    @IBAction func stepperLecheYYogurtChanged(_ sender: UIStepper) {
        stepperLabelLecheYYogurt.text = String(Int(sender.value))
        
        //Asignación de variables
        goalsBrain.macroNutrienteConsumido = Int(sender.value)
        let consumo = goalsBrain.macroNutrienteConsumido
        goalsBrain.macroNutrienteMeta = Int(goalLabelLecheYYogurt.text!)!
        let meta = goalsBrain.macroNutrienteMeta
        
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: meta , consumo: consumo)
        if goalsBrain.flag == true {
            stepperLabelLecheYYogurt.textColor = .red
        }else{
            stepperLabelLecheYYogurt.textColor = .blue
        }
    }
    
    @IBAction func stepperCarnesMagrasChanged(_ sender: UIStepper) {
        stepperLabelCarnesMagras.text = String(Int(sender.value))
        
        //Asignación de variables
        goalsBrain.macroNutrienteConsumido = Int(sender.value)
        let consumo = goalsBrain.macroNutrienteConsumido
        goalsBrain.macroNutrienteMeta = Int(goalLabelCarnesMagras.text!)!
        let meta = goalsBrain.macroNutrienteMeta
        
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: meta , consumo: consumo)
        if goalsBrain.flag == true {
            stepperLabelCarnesMagras.textColor = .red
        }else{
            stepperLabelCarnesMagras.textColor = .blue
        }
    }
    
    @IBAction func stepperCarnesModGrasChanged(_ sender: UIStepper) {
        stepperLabelCarnesModGras.text = String(Int(sender.value))
        
        //Asignación de variables
        goalsBrain.macroNutrienteConsumido = Int(sender.value)
        let consumo = goalsBrain.macroNutrienteConsumido
        goalsBrain.macroNutrienteMeta = Int(goalLabelCarnesModGras.text!)!
        let meta = goalsBrain.macroNutrienteMeta
        
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: meta , consumo: consumo)
        if goalsBrain.flag == true {
            stepperLabelCarnesModGras.textColor = .red
        }else{
            stepperLabelCarnesModGras.textColor = .blue
        }
    }
    
    @IBAction func stepperCarnesAltGrasChanged(_ sender: UIStepper) {
        stepperLabelCarnesAltGras.text = String(Int(sender.value))
        
        //Asignación de variables
        goalsBrain.macroNutrienteConsumido = Int(sender.value)
        let consumo = goalsBrain.macroNutrienteConsumido
        goalsBrain.macroNutrienteMeta = Int(goalLabelCarnesAltGras.text!)!
        let meta = goalsBrain.macroNutrienteMeta
        
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: meta , consumo: consumo)
        if goalsBrain.flag == true {
            stepperLabelCarnesAltGras.textColor = .red
        }else{
            stepperLabelCarnesAltGras.textColor = .blue
        }
    }
    
    @IBAction func stepperGrasasChanged(_ sender: UIStepper) {
        stepperLabelGrasas.text = String(Int(sender.value))
        
        //Asignación de variables
        goalsBrain.macroNutrienteConsumido = Int(sender.value)
        let consumo = goalsBrain.macroNutrienteConsumido
        goalsBrain.macroNutrienteMeta = Int(goalLabelGrasas.text!)!
        let meta = goalsBrain.macroNutrienteMeta
        
        //Ejecuta comparación
        goalsBrain.compararMetaYConsumo(meta: meta , consumo: consumo)
        if goalsBrain.flag == true {
            stepperLabelGrasas.textColor = .red
        }else{
            stepperLabelGrasas.textColor = .blue
        }
    }
    
    
    //Clean and Register Buttons
    
    @IBAction func cleanButtonPressed(_ sender: UIButton) {
        stepperAlmidon.value = 0
        stepperLabelAlmidon.text = "0"
        stepperLabelAlmidon.textColor = .black
        
        stepperAzucares.value = 0
        stepperLabelAzucares.text = "0"
        stepperLabelAzucares.textColor = .black
        
        stepperVerduras.value = 0
        stepperLabelVerduras.text = "0"
        stepperLabelVerduras.textColor = .black
        
        stepperFrutas.value = 0
        stepperLabelFrutas.text = "0"
        stepperLabelFrutas.textColor = .black
        
        stepperLecheYYogurt.value = 0
        stepperLabelLecheYYogurt.text = "0"
        stepperLabelLecheYYogurt.textColor = .black
        
        stepperCarnesMagras.value = 0
        stepperLabelCarnesMagras.text = "0"
        stepperLabelCarnesMagras.textColor = .black
        
        stepperCarnesModGras.value = 0
        stepperLabelCarnesModGras.text = "0"
        stepperLabelCarnesModGras.textColor = .black
        
        stepperCarnesAltGras.value = 0
        stepperLabelCarnesAltGras.text = "0"
        stepperLabelCarnesAltGras.textColor = .black
        
        stepperGrasas.value = 0
        stepperLabelGrasas.text = "0"
        stepperLabelGrasas.textColor = .black
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        if goalsBrain.flag == false {
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
    
}

