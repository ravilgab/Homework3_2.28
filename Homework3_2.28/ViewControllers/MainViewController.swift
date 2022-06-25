//
//  MainViewController.swift
//  Homework3_2.28
//
//  Created by Ravil on 25.06.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorView.layer.cornerRadius = 16
        colorView.layer.borderWidth = 1
        colorView.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
        
        setLabelValue()
        paintView()
    }
    
    @IBAction func masterSliderMoved(_ sender: UISlider) {
        if sender == redSlider {
            redLabel.text = convertToString(from: sender)
        } else if sender == greenSlider {
            greenLabel.text = convertToString(from: sender)
        } else {
            blueLabel.text = convertToString(from: sender)
        }
        
        paintView()
    }
    
    @IBAction func resetButtonPressed() {
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
        
        setLabelValue()
        paintView()
    }
    
    func convertToString(from slider: UISlider) -> String {
        return String(format: "%.2f", slider.value)
    }

    func setLabelValue() {
        redLabel.text = convertToString(from: redSlider)
        greenLabel.text = convertToString(from: greenSlider)
        blueLabel.text = convertToString(from: blueSlider)
    }
    
    func paintView() {
        let updatedColor = UIColor(red: CGFloat(redSlider.value),
                                   green: CGFloat(greenSlider.value),
                                   blue: CGFloat(blueSlider.value),
                                   alpha: 1)
        
        colorView.backgroundColor = updatedColor
    }

}
