//
//  ViewController.swift
//  RGB settings
//
//  Created by Эмиль on 04.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorRectangle: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorRectangle.layer.cornerRadius = 20
        
        labelRed.text = "\((round(redSlider.value * 100) / 100))"
        labelGreen.text = "\((round(greenSlider.value * 100) / 100))"
        labelBlue.text = "\((round(blueSlider.value * 100) / 100))"
    }
    
    func changeColor() {
        let redColor = CGFloat(redSlider.value)
        let greenColor = CGFloat(greenSlider.value)
        let blueColor = CGFloat(blueSlider.value)
        
        colorRectangle.backgroundColor = UIColor(
            red: redColor,
            green: greenColor,
            blue: blueColor,
            alpha: 1.0)
    }
    
    @IBAction func redSliderAction() {
        labelRed.text = "\((round(redSlider.value * 100) / 100))"
        changeColor()
    }
    
    @IBAction func greenSliderAction() {
        labelGreen.text = "\((round(greenSlider.value * 100) / 100))"
        changeColor()
    }
    
    @IBAction func blueSliderAction() {
        labelBlue.text = "\((round(blueSlider.value * 100) / 100))"
        changeColor()
    }

}

