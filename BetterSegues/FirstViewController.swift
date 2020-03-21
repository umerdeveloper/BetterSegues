//
//  ViewController.swift
//  BetterSegues
//
//  Created by Umer Khan on 21/03/2020.
//  Copyright © 2020 Umer Khan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, SegueHandler {
    
    enum SegueIdentifier: String {
        case firstVC = "FirstViewController"
        case secondVC = "SecondViewController"
    }
    
    
     // private let secondVCIdentifier: String = "SecondViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    // Prepare Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segueIdentifier(for: segue) {
            case .firstVC:
                print("1")
            case .secondVC:
                print("2")
        }
    }
    


}

