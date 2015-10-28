//
//  ProgrmaViewController.swift
//  Foro Emprezando
//
//  Created by cCeo on 27/10/15.
//  Copyright (c) 2015 CCEO. All rights reserved.
//

import UIKit

class ProgrmaViewController: UIViewController {

    @IBOutlet weak var ProgramaImage: UIImageView!
    @IBOutlet weak var programaTextView: UITextView!
    
    var image = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ProgramaImage.image = self.image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
