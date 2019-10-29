//
//  CartaCelda.swift
//  TresPuntos
//
//  Created by user148984 on 10/29/19.
//  Copyright © 2019 Xiomara Sánchez. All rights reserved.
//

import UIKit

class CartaCelda: UITableViewCell {

    @IBOutlet weak var CartaImagen: UIImageView!
    @IBOutlet weak var CartaNombre: UILabel!
    
    func setCarta(carta: Carta) {
        CartaImagen.image = carta.imagen
        CartaNombre.text = carta.nombre
    }
}
