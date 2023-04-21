//
//  ViewController.swift
//  TraffikLight
//
//  Created by Матвей Авдеев on 20.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var titleButton: UIButton!
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleButton.layer.cornerRadius = 12
        
        setting(view: greenView)
        setting(view: yellowView)
        setting(view: redView)
        
    }
    
    func setting(view: UIView) {
        view.layer.cornerRadius = 75
        view.alpha = 0.5
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.systemIndigo.cgColor
    }
    @IBAction func selectorButton() {
        if redView.alpha == 0.5 && yellowView.alpha == 0.5 && greenView.alpha == 0.5 {
            redView.alpha = 1
        } else if redView.alpha == 1 {
            redView.alpha = 0.5
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.5
            greenView.alpha = 1
        } else if greenView.alpha == 1 {
            greenView.alpha = 0.5
        }
        titleButton.setTitle(
            redView.alpha == 0.5 &&
            yellowView.alpha == 0.5 &&
            greenView.alpha == 0.5 ? "START" : "NEXT", for: .normal)
    }
    
}

