//
//  Reserva.swift
//  TresPuntos
//
//  Created by user148984 on 10/29/19.
//  Copyright © 2019 Xiomara Sánchez. All rights reserved.
//

import Foundation
import UIKit

class Reserva {
    
    var imagen: UIImage
    var nombre: String
    
    init(imagen: UIImage, nombre: String) {
        self.imagen = imagen
        self.nombre = nombre
    }
    
    class func crearListadoReservas() -> [Reserva] {
        var tempReservas: [Reserva] = []
        
        let reserva1 = Reserva(imagen: UIImage(named: "barra-libre-img")!,
                               nombre: "Barra Libre")
        let reserva2 = Reserva(imagen: UIImage(named: "box-chico-img")!,
                               nombre: "Box Chico")
        let reserva3 = Reserva(imagen: UIImage(named: "lounge-img")!,
                               nombre: "Lounge")
        let reserva4 = Reserva(imagen: UIImage(named: "salon-img")!,
                               nombre: "Salón")
        
        tempReservas.append(reserva1)
        tempReservas.append(reserva2)
        tempReservas.append(reserva3)
        tempReservas.append(reserva4)
        
        return tempReservas
    }
}
