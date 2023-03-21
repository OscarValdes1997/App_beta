//
//  Galeria_2_ViewController.swift
//  App_beta
//
//  Created by CEDAM20 on 16/03/23.
//

import UIKit

class Galeria_2_ViewController: UIViewController {

    
    @IBOutlet weak var imagen1: UIImageView!
    let listaImagenes = ["demonio","mago","relicario"]
    var elementosIndice = 0
    
    
    
    override func viewDidLoad() {
        actualizarElementos()
        super.viewDidLoad()

    }
    
    @IBAction func siguietne(_ sender: Any) {
        elementosIndice+=1
        
        if(elementosIndice >= listaImagenes.count){
            
            elementosIndice = 0
            
        }
        actualizarElementos()
    }
    
    func actualizarElementos(){
        
        let numeroElemento = listaImagenes[elementosIndice]
        let laImagern = UIImage(named: numeroElemento)
        
        imagen1.image = laImagern
    }
    @IBAction func regresar (unwindsegue: UIStoryboard ){
        
    }

}
