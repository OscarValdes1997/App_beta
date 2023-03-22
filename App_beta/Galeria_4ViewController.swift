//
//  Galeria_4ViewController.swift
//  App_beta
//
//  Created by CEDAM01 on 22/03/23.
//

import UIKit

class Galeria_4ViewController: UIViewController {

    
    @IBOutlet weak var imagen1: UIImageView!
    let listaImagenes1 = ["dios1","dios2","dios3"]
    var elementosIndice1 = 0
    
    
    
    @IBOutlet weak var imagen2: UIImageView!
    
    let listaImagenes2 = ["dios","dios4","dios5"]
    var elementosIndice2 = 0
    
    
    
    override func viewDidLoad() {
        actualizarElementos1()
        
        actualizarElementos2()
        
        super.viewDidLoad()
        
        
    }
    

    
    @IBAction func boton1(_ sender: Any) {
        elementosIndice1+=1
        
        if(elementosIndice1 >= listaImagenes1.count){
            
            elementosIndice1 = 0
            
        }
        actualizarElementos1()
    }
    
    @IBAction func boton2(_ sender: Any) {
        elementosIndice2+=1
        
        if(elementosIndice2 >= listaImagenes2.count){
            
            elementosIndice2 = 0
            
        }
        actualizarElementos2()
    }
    
    
    func actualizarElementos1(){
        
        let numeroElemento1 = listaImagenes1[elementosIndice1]
        let laImagern1 = UIImage(named: numeroElemento1)
        
        imagen1.image = laImagern1
    }
    
    func actualizarElementos2(){
        
        let numeroElemento2 = listaImagenes2[elementosIndice2]
        let laImagern2 = UIImage(named: numeroElemento2)
        
        imagen2.image = laImagern2
    }
    
}
