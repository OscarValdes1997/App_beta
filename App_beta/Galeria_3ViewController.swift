//
//  Galeria_3ViewController.swift
//  App_beta
//
//  Created by CEDAM01 on 22/03/23.
//

import UIKit

class Galeria_3ViewController: UIViewController {

    
    @IBOutlet weak var imagen: UIImageView!
    let listaImagenes = ["deimos1","deimos2","deimos3"]
    var elementosIndice = 0
    
    
    
    override func viewDidLoad() {
        actualizarElementos()
        super.viewDidLoad()

  
    }
    

    @IBAction func boton(_ sender: Any) {
        elementosIndice+=1
        
        if(elementosIndice >= listaImagenes.count){
            
            elementosIndice = 0
            
        }
        actualizarElementos()
    }
    func actualizarElementos(){
        
        let numeroElemento = listaImagenes[elementosIndice]
        let laImagern = UIImage(named: numeroElemento)
        
        imagen.image = laImagern
    }
    
}
