//
//  ReservasListado.swift
//  TresPuntos
//
//  Created by user148984 on 10/28/19.
//  Copyright © 2019 Xiomara Sánchez. All rights reserved.
//

import UIKit

class ReservasListado: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    
    var reservas: [Reserva] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        reservas = Reserva.crearListadoReservas()
    }

    
    // Pintado de celdas en ReservasListado
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reservas.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reserva = reservas[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReservaCelda", for: indexPath) as! ReservaCelda
        cell.setReserva(reserva: reserva)
        return cell
    }
}
