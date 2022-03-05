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
    
    @IBOutlet var resetButton: UIButton!
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorRectangle.layer.cornerRadius = 16
        resetButton.layer.cornerRadius = 12
        
        changeColor()
        
        labelRed.text = String((round(redSlider.value * 100) / 100))
        labelGreen.text = String((round(greenSlider.value * 100) / 100))
        labelBlue.text = String((round(blueSlider.value * 100) / 100))
    
    }
    
    
    @IBAction func redSliderAction() {
        labelRed.text = String((round(redSlider.value * 100) / 100))
        changeColor()
    }
    
    @IBAction func greenSliderAction() {
        labelGreen.text = String((round(greenSlider.value * 100) / 100))
        changeColor()
    }
    
    @IBAction func blueSliderAction() {
        labelBlue.text = String((round(blueSlider.value * 100) / 100))
        changeColor()
    }
    
    @IBAction func resetButtonPressed() {
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
        
        colorRectangle.backgroundColor = UIColor(
            red: 0.5,
            green: 0.5,
            blue: 0.5,
            alpha: 1.0)
    }
    
}

