//
//  SecondViewController.swift
//  Foro Emprezando
//
//  Created by cCeo on 22/10/15.
//  Copyright (c) 2015 CCEO. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let expositorName = ["     Saúl Haro Vázquez", "Jorge García", "Juan José Díaz", "Francisco García Sánchez", "Sergio Ramírez Zúñiga", "Gaudalupe Gómez", "Arturo Gilio Hamdan", "Vidal Cantú"]
//    static var descripcion = "Macrolynk \nGanador del emprendedor del año por la revista CNN Expansión 2015, y consultor de empresas como LG,GE,PLEXUS,MAHLE entre otras."
//    static var descripcion2 = "Outcom \nDirector de empresa con representación en México, Co-fundador de la Alianza internacional de Empresarios Jóvenes del G20."
//    static var descripcion3 = "Eudoxa \nEmpresario filosofo que diseño el plan estratégico de la empresa de transportes ADO y Coparmex Nacional."
//    static var descripcion4 = "Pacomer y Coachildren \nEmpresario de 12 años con dos empresas. Una especializada en asesorar niños en la creación de empresas y la segunda de servicios de catering."
//    static var descripcion5 = "Academia de Baloncesto Indígena de México. \nEntrenador del equipo de niños triqui, ganador de la copa mundial de mini baloncesto en Argentina."
//    static var descripcion6 = "Remedios Mágicos \nAlquimista en jefe de la botica de dulces más importante de todo México. Y ganadora de “El Monstruo de la mercadotecnia” por CNN Expansión."
//    static var descripcion7 = "Palacio del Centenario \nMatador de toros y empresario proveedor de la empresa Nestle y socio mayoritario del centro de espectáculos coliseo."
//    static var descripcion8 = "Kenio Flims y veramiko \nProductor de la película Cantinflas y Co-productor de la película “The Perfect Game. Ganador del emprendedor de año CNN Expansión en el 2013 con la empresa Veramiko."
    let descriptionTextView = ["Macrolynk \n\nGanador del emprendedor del año por la revista CNN Expansión 2015, y consultor de empresas como LG, GE, PLEXUS, MAHLE entre otras.", "Outcom \n\nDirector de empresa con representación en México, Co-fundador de la Alianza internacional de Empresarios Jóvenes del G20.", "Eudoxa \n\nEmpresario filosofo que diseño el plan estratégico de la empresa de transportes ADO y Coparmex Nacional.", "Pacomer y Coachildren \n\nEmpresario de 12 años con dos empresas. Una especializada en asesorar niños en la creación de empresas y la segunda de servicios de catering.", "Academia de Baloncesto Indígena de México. \n\nEntrenador del equipo de niños triqui, ganador de la copa mundial de mini baloncesto en Argentina.", "Remedios Mágicos \n\nAlquimista en jefe de la botica de dulces más importante de todo México. Ganadora de “El Monstruo de la mercadotecnia” por CNN Expansión.", "Palacio del Centenario \n\nMatador de toros y empresario proveedor de la empresa Nestle y socio mayoritario del centro de espectáculos coliseo.", "Kenio Flims y veramiko \n\nProductor de la película Cantinflas y Co-productor de la película “The Perfect Game. Ganador del emprendedor de año CNN Expansión en el 2013 con la empresa Veramiko."]
    let imagePrograma = [UIImage(named: "imagen1"), UIImage(named: "imagen2"), UIImage(named: "imagen3"), UIImage(named: "imagen4"), UIImage(named: "imagen5"), UIImage(named: "imagen6"), UIImage(named: "imagen7"), UIImage(named: "imagen8"), UIImage(named: "imagen9")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.expositorName.count
        
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
        
        
        
        cell.imageViewPrograma?.image = self.imagePrograma[indexPath.row]
        cell.ProgramaLabel?.text = self.expositorName[indexPath.row]
        cell.contenLabel?.text = self.descriptionTextView[indexPath.row]
    
        
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        self.performSegueWithIdentifier("showImage", sender: self)
        
    }
    
    


}



