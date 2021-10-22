//
//  ViewController.swift
//  2.2.1
//
//  Created by Ekaterina Kugeneva on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redColor: UISlider!
    @IBOutlet weak var blueColor: UISlider!
    @IBOutlet weak var greenColor: UISlider!
    @IBOutlet weak var viewColor: UIView!
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!

  
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        redColor.minimumTrackTintColor = .red
        greenColor.minimumTrackTintColor = .green
        blueColor.minimumTrackTintColor = .blue
        labelRed.text = String(redColor.value)
        labelGreen.text = String(greenColor.value)
        labelBlue.text = String(blueColor.value)
        viewColor.layer.cornerRadius =  viewColor.frame.height / 4
        viewColor.backgroundColor =  UIColor(red: (CGFloat(redColor.value) ), green: (CGFloat(greenColor.value) ), blue: (CGFloat(blueColor.value) ), alpha: 1.0)
    }
    
    @IBAction func changingRed() {
        labelRed.text = String(format: "%.2f", redColor.value)
        changeBackground(redColor!)
    }
    
    @IBAction func changingGreen() {
        labelGreen.text = String(format: "%.2f", greenColor.value)
        changeBackground(greenColor!)
    }
    
    @IBAction func changingBlue() {
        labelBlue.text = String(format: "%.2f", blueColor.value)
        changeBackground(blueColor!)
    }
    
    @IBAction func changeBackground(_ sender: Any) {
        viewColor.backgroundColor =  UIColor(red: (CGFloat(redColor.value) ), green: (CGFloat(greenColor.value) ), blue: (CGFloat(blueColor.value) ), alpha: 1.0)
    }
    
    
}
 
