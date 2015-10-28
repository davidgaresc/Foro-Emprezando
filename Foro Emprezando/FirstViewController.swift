//
//  FirstViewController.swift
//  Foro Emprezando
//
//  Created by cCeo on 22/10/15.
//  Copyright (c) 2015 CCEO. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    
    //Declaracion de las variables del storyBoard
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var textview: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //atributos del scrollview y textview
        scrollView.scrollEnabled = true
        textview.scrollEnabled = false
        
        scrollView.contentSize = textview.bounds.size
        
        //texto que ira dentro del texview
        let titleOne = "¿Qué es el foro Emprezando?"
        let bodyOne = "Es un evento dedicado al emprendimiento donde se hablará de la creación de empresas, de responsabilidad social, de juventud y formación empresarial el cual organiza la Confederación Patronal de la República Mexicana COPARMEX Aguascalientes a través de su Comisión de Empresarios Jóvenes. Al evento asistirán los emprendedores y empresarios que están luchando por hacer realidad su sueño y transformar a su comunidad desde su universidad, preparatoria o empresa. Buscamos Jóvenes con vocación empresarial en los que generaremos una experiencia de vida y estamos seguros que cada individuo presente en este foro sumará esfuerzos para la creación de más y mejores empresas para México."
        let titleTwo = "Objetivos del Foro"
        let bodyTwo = "Despertar, acompañar y consolidar las vocaciones empresariales de estos jóvenes, y de esta manera de canalizar su talento en la creación de empresas de valor y desarrollen un sentido de responsabilidad social generando conciencia de que todo empresario se debe a su equipo de colaboradores y por tanto a su comunidad"
        let titleThree = "¿Dirigido a?"
        let bodyThree = "∙Empresarios \n∙Jóvenes con ideas de negocio quq quieran llevarlas a la práctica \n∙Estudiantes \n∙Futuros empresarios"
        let titleFour = "El formato"
        let bodyFour = "Nos encanta que seas parte de la generación empresarios que cambiaran a México, el evento tiene un costo de recuperación, costo que utilizaremos para que tu aprendas lo necesario para ser el mejor emprendedor de todo México. \n\nCharlas cortas y talleres, distribuidos en 3 diferentes bloques (Empresarios Jóvenes, Empresarios que dejan huella, Actoes Sociales y Líderes Empresariales)."
        
        let textString = "\(titleOne) \n \n\(bodyOne) \n\n\(titleTwo) \n\n\(bodyTwo) \n\n\(titleThree) \n\n\(bodyThree) \n\n \(titleFour) \n\n\(bodyFour) \n\n \n"
        let attrText = NSMutableAttributedString(string: textString)
        
        let largeFont = UIFont(name: "Arial-BoldMT", size: 15.0)!
        let smallFont = UIFont(name: "Arial", size: 13.0)!
        
        let largeTextRange = (textString as NSString).rangeOfString(titleOne)
        let smallTextRange = (textString as NSString).rangeOfString(bodyOne)
        let largeTextRangeTwo = (textString as NSString).rangeOfString(titleTwo)
        let smallTextRangeTwo = (textString as NSString).rangeOfString(bodyTwo)
        let largeTextRangeThree = (textString as NSString).rangeOfString(titleThree)
        let smallTextRangeThree = (textString as NSString).rangeOfString(bodyThree)
        let largeTextRangeFour = (textString as NSString).rangeOfString(titleFour)
        let smallTextRangeFour = (textString as NSString).rangeOfString(bodyFour)
        
        attrText.addAttribute(NSFontAttributeName, value: largeFont, range: largeTextRange)
        attrText.addAttribute(NSFontAttributeName, value: smallFont, range: smallTextRange)
        attrText.addAttribute(NSFontAttributeName, value: largeFont, range: largeTextRangeTwo)
        attrText.addAttribute(NSFontAttributeName, value: smallFont, range: smallTextRangeTwo)
        attrText.addAttribute(NSFontAttributeName, value: largeFont, range: largeTextRangeThree)
        attrText.addAttribute(NSFontAttributeName, value: smallFont, range: smallTextRangeThree)
        attrText.addAttribute(NSFontAttributeName, value: largeFont, range: largeTextRangeFour)
        attrText.addAttribute(NSFontAttributeName, value: smallFont, range: smallTextRangeFour)
        
        
        textview.attributedText = attrText
        textview.textColor = UIColor(white: 1.0, alpha: 1.0)
        textview.backgroundColor = UIColor(white: 1.0, alpha: 0.0)
        textview.textAlignment = NSTextAlignment.Justified
        textview.editable = false
        textview.selectable = false
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

//        textview.textColor = UIColor (white: 1.0, alpha: 1.0)
//        textview.editable = false
//        textview.selectable = false
//        textview.backgroundColor = UIColor(white: 1.0, alpha: 0.0)
//        textview.font = UIFont(name: "AvenirNext-Regular", size: 16)
//        textview.text = "Desde el fondo de la tierra mas alla de la  existeancia flotan almas solas todas cruzificadas, Hombres y mujeres lloran por un amor que nunca tuvieronDesde el fondo de la tierra mas alla de la  existeancia flotan almas solas todas cruzificadas, Hombres y mujeres lloran por un amor que nunca tuvieronDesde el fondo de la tierra mas alla de la  existeancia flotan almas solas todas cruzificadas, Hombres y mujeres lloran por un amor que nunca tuvieronDesde el fondo de la tierra mas alla de la  existeancia flotan almas solas todas cruzificadas, Hombres y mujeres lloran por un amor que nunca tuvieronDesde el fondo de la tierra mas alla de la  existeancia flotan almas solas todas cruzificadas, Hombres y mujeres lloran por un amor que nunca tuvieronDesde el fondo de la tierra mas alla de la  existeancia flotan almas solas todas cruzificadas, Hombres y mujeres lloran por un amor que nunca tuvieronDesde el fondo de la tierra mas alla de la  existeancia flotan almas solas todas cruzificadas \n"
//        textview.textAlignment = NSTextAlignment.Justified

