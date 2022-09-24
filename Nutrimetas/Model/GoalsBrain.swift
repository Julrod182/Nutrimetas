//
//  GoalsBrain.swift
//  Nutrimetas
//
//  Created by Julio Rodriguez Reategui on 23/09/22.
//

import Foundation

struct GoalsBrain {
    
    var macroNutrienteMeta: Int = 0
    var macroNutrienteConsumido: Int = 0
    var flag: Bool = false
    
    mutating func compararMetaYConsumo(meta: Int, consumo: Int) {
        
        if consumo > meta {
            self.flag = true
        } else {
            self.flag = false
        }
        
    }
    
}
