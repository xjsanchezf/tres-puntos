//
//  CartaListado.swift
//  TresPuntos
//
//  Created by user148984 on 10/28/19.
//  Copyright © 2019 Xiomara Sánchez. All rights reserved.
//

import UIKit

class CartaListado: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    
    var platos: [Carta] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        platos = Carta.crearListadoCarta()
    }

    
    // Pintado de celdas en CartaListado
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return platos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let plato = platos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartaCelda", for: indexPath) as! CartaCelda
        cell.setCarta(carta: plato)
        return cell
    }
}
