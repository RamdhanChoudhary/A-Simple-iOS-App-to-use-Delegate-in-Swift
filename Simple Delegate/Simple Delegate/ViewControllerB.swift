//
//  ViewControllerB.swift
//  Simple Delegate
//
//  Created by RAMDHAN CHOUDHARY on 20/05/19.
//  Copyright © 2019 RDC. All rights reserved.
//

import UIKit

protocol ViewControllerBDelegate: NSObjectProtocol {
    
    // Classes that adopt this protocol MUST define
    // this method -- and hopefully do something in
    // that definition.
    func addItemViewController(_ controller: ViewControllerB?, didFinishEnteringItem item: String?)
}

class ViewControllerB: UIViewController {
    
    var delegate: ViewControllerBDelegate?


    override func viewDidLoad() {
        super.viewDidLoad()

        //MARK:  - - - -  Set Data for Passing Data through Delegate  - - - - - -
        delegate?.addItemViewController(self, didFinishEnteringItem: "Data for ViewControllerA")
    }
}
