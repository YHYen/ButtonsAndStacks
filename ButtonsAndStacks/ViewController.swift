//
//  ViewController.swift
//  ButtonsAndStacks
//
//  Created by 顏逸修 on 2023/3/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    var colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .systemIndigo, .systemPurple]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func colorButtonPressed(_ sender: UIButton) {
        print("You clicked tag #: \(sender.tag)")
        // print(sender.currentTitle!)
        
        if sender.tag >= 0 && sender.tag <= 7 {
            colorLabel.text = "You clicked \(sender.currentTitle!)"
            colorLabel.textColor = colors[sender.tag]
        } else if sender.tag == 1000 {
            colorLabel.text = ""
        }
        
    }
}

