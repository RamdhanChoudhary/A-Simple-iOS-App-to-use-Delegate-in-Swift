//
//  ViewController.swift
//  Simple Delegate
//
//  Created by RAMDHAN CHOUDHARY on 20/05/19.
//  Copyright © 2019 RDC. All rights reserved.
//

import UIKit

class ViewControllerA: UIViewController, ViewControllerBDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Delegate method
    func addItemViewController(_ controller: ViewControllerB?, didFinishEnteringItem item: String?) {
        print("Value from ViewControllerB's Delegate is  = ", item!)
    }
    
    @IBAction func goToViewControllerForDelegate(_ sender: Any) {
        
        //Make sure you define storyboardID = ViewControllerB  in Storyboard
        if let viewControllerB = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewControllerB") as? ViewControllerB {
            viewControllerB.delegate = self
            
            if let navigator = navigationController {
                navigator.pushViewController(viewControllerB, animated: true)
            }
        }
    }

}

