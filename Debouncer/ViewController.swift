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
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.doSomething()
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                self.doSomething()
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.doSomething()
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                        self.doSomething()
                    }
                }
            }
        }
    }
    
    func doSomething() {
        
        debouncer.renewInterval()
        print("renew interval")
        debouncer.handler = {
            print("method executed")
        }
    }
}

