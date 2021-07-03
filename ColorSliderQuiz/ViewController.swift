//
//  ViewController.swift
//  ColorSliderQuiz
//
//  Created by Jaehoon Lee on 2021/07/01.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var onoffSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 나머지 코드를 채우시오.
    
    func updateColor() {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue =  CGFloat(blueSlider.value)
        let color = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
        colorView.backgroundColor = color
    }
    
    
    @IBAction func onOffChanged(_ sender: UISwitch) {
        if sender.isOn {
            updateColor()
        } else {
            colorView.backgroundColor = UIColor.lightGray
        }
        
        redSlider.isEnabled = sender.isOn
        greenSlider.isEnabled = sender.isOn
        blueSlider.isEnabled = sender.isOn
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue =  CGFloat(blueSlider.value)
        let color = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
        colorView.backgroundColor = color
    }
    

}

