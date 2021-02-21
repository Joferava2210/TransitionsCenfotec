//
//  ViewController.swift
//  transitions
//
//  Created by Felipe Ramirez Vargas on 20/2/21.
//  Copyright © 2021 com.framirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SegueTapped(_ sender: Any) {
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: .main)
        
        guard let greenViewController = mainStoryBoard.instantiateViewController(withIdentifier: "GreenViewController") as?
            GreenViewController else{
                print("Couldn't find the view controller")
                return
        }
        
        greenViewController.modalTransitionStyle = .coverVertical
        
       // navigationController?.pushViewController(greenViewController, animated: true)
        
        present (greenViewController, animated: true, completion: nil)
        
        
    }
    
}

