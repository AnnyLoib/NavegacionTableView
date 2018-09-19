//
//  ViewController.swift
//  NavegacionTableView
//
//  Created by Alumno on 19/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let materias :  [Materia] = [Materia(nombre: "Programación de dispositivos moviles"),
                                 Materia(nombre: "Redes Computacionales"),
                                 Materia(nombre: "Animación por Computadora I"),
                                 Materia(nombre: "Tratamiento de Imagen"),
                                 Materia(nombre: "México en el Contexto Global"),
                                 Materia(nombre: "Mercadotecnia"),
                                 Materia(nombre: "Pensamiento Social Cristiano")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CellMateria") as! CeldaMateria
        celda.lblNombre.text = materias[indexPath.row].nombre
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 93
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Materias"
        
        materias[0].calificacionPrimerParcial = 10
        materias[2].calificacionPrimerParcial = 9
        materias[3].calificacionPrimerParcial = 7
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

