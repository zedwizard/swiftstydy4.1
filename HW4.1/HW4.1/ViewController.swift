//
//  ViewController.swift
//  HW4.1
//
//  Created by Zed on 9/8/19.
//  Copyright © 2019 123. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Task 1
        countNameSymbols()
    }
    //    Задача 1. Создать строку с своим именем, вывести количество символов содержащихся в ней.
    func countNameSymbols() {
        let myName = "Max"
        print("Name contain \(myName.count) symbols")
    }


}

