//
//  ReservasCelda.swift
//  TresPuntos
//
//  Created by user148984 on 10/29/19.
//  Copyright © 2019 Xiomara Sánchez. All rights reserved.
//

import UIKit

class ReservaCelda: UITableViewCell {

    @IBOutlet weak var ReservaImagen: UIImageView!
    @IBOutlet weak var ReservaNombre: UILabel!
    
    func setReserva(reserva: Reserva) {
        ReservaImagen.image = reserva.imagen
        ReservaNombre.text = reserva.nombre
    }

}
