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
    @IBOutlet var alphaSlider: UISlider!
    
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    @IBOutlet var labelAlpha: UILabel!
    
    @IBOutlet var alphaView: UIStackView!
    
    @IBOutlet var swithAlpha: UISwitch!
    
    @IBOutlet var resetButton: UIButton!
    
    func changeColor() {
        let redColor = CGFloat(redSlider.value)
        let greenColor = CGFloat(greenSlider.value)
        let blueColor = CGFloat(blueSlider.value)
        let alpha = CGFloat(alphaSlider.value)
        
        colorRectangle.backgroundColor = UIColor(
            red: redColor,
            green: greenColor,
            blue: blueColor,
            alpha: alpha)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorRectangle.layer.cornerRadius = 16
        resetButton.layer.cornerRadius = 12
        
        changeColor()
        
        labelRed.text = String((round(redSlider.value * 100) / 100))
        labelGreen.text = String((round(greenSlider.value * 100) / 100))
        labelBlue.text = String((round(blueSlider.value * 100) / 100))
        labelAlpha.text = String((round(alphaSlider.value * 100) / 100))
    
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
    
    @IBAction func alphaSliderAction() {
        labelAlpha.text = String((round(alphaSlider.value * 100) / 100))
    }
    
    @IBAction func PressSwithAlpha() {
        if swithAlpha.isOn {
            alphaView.isHidden = false
        } else {
            alphaView.isHidden = true
        }
    }
    
    @IBAction func resetButtonPressed() {
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
        alphaSlider.value = 1.0
        
        labelRed.text = String((round(redSlider.value * 100) / 100))
        labelGreen.text = String((round(greenSlider.value * 100) / 100))
        labelBlue.text = String((round(blueSlider.value * 100) / 100))
        labelAlpha.text = String((round(alphaSlider.value * 100) / 100))
        
        
        changeColor()
    }
    
}

