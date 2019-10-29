//
//  Carta.swift
//  TresPuntos
//
//  Created by user148984 on 10/29/19.
//  Copyright © 2019 Xiomara Sánchez. All rights reserved.
//

import Foundation
import UIKit

class Carta {
    var imagen: UIImage
    var nombre: String
    
    init(imagen: UIImage, nombre: String) {
        self.imagen = imagen
        self.nombre = nombre
    }
    
    class func crearListadoCarta() -> [Carta] {
        var tempCarta: [Carta] = []
        
        let carta1 = Carta(imagen: UIImage(named: "piqueos-img")!,
                           nombre: "Piqueos")
        let carta2 = Carta(imagen: UIImage(named: "alitas-img")!,
                           nombre: "Alitas")
        let carta3 = Carta(imagen: UIImage(named: "makis-img")!,
                           nombre: "Makis")
        let carta4 = Carta(imagen: UIImage(named: "licores-img")!,
                           nombre: "Licores")
        let carta5 = Carta(imagen: UIImage(named: "cocteles-img")!,
                           nombre: "Cocteles")
        
        tempCarta.append(carta1)
        tempCarta.append(carta2)
        tempCarta.append(carta3)
        tempCarta.append(carta4)
        tempCarta.append(carta5)
        
        return tempCarta
    }
}
