//
//  ViewController.swift
//  Debouncer
//
//  Created by Samarth Paboowal on 09/05/20.
//  Copyright © 2020 Samarth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let debouncer = Debouncer(timeInterval: 0.3)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        doSomething()
        doSomething()
        doSomething()
        doSomething()
        doSomething()
        doSomething()
        doSomething()
    }
    
    func doSomething() {
        
        debouncer.renewInterval()
        
        debouncer.handler = {
            print("Called only once")
        }
    }


}

