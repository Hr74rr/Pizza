//
//  SizeViewController.swift
//  coursera-interfaz-ios-week2
//
//  Created by Javier Soto on 26/6/16.
//  Copyright © 2016 Javier Soto. All rights reserved.
//

import UIKit

class SizeViewController: UIViewController {
    
    @IBOutlet var image:UIImageView!
    @IBOutlet var textSize: UILabel!
    @IBOutlet var slider:UISlider!
    
    var stepsArray: NSArray = ["Pequeña","Mediana","Grande"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func sliderValueChanged(slider:UISlider!){
        let index: Int = Int(slider.value + 0.5)
        slider.setValue(Float(index), animated: false)
        let size: String = self.stepsArray.objectAtIndex(index) as! String
        self.textSize.text = size
        
       
    }
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "BaseViewControllerSegue"){
            let pizza: Pizza = Pizza()
            pizza.size = self.stepsArray.objectAtIndex(Int(self.slider.value)) as! String
            
            let destinationVC = segue.destinationViewController as! BaseViewController
            
            destinationVC.pizza = pizza
        }
    }

}
