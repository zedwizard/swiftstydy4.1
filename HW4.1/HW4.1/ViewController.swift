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
//        countNameSymbols()
        //Task 2
        checkSurnameSuffix()
    }
    //    Задача 1. Создать строку с своим именем, вывести количество символов содержащихся в ней.
    func countNameSymbols() {
        let myName = "Max"
        print("Name contain \(myName.count) symbols")
    }

    //    Задача 2. Создать строку с своим отчеством проверить его на окончание “ич/на”
    //    P.S. в классе написан метод который позволяет проверить на суффикс или префикс, найдите и используйте его.
    func checkSurnameSuffix() {
        let mySurname = "Alexandrovich"
        //version 1
        if mySurname.suffix(3) == "ich" {
            print("Suffix is \"ich\"")
        } else if mySurname.suffix(3) == "na" {
            print("Suffix is \"na\"")
        }
        //version 2
        if mySurname.hasSuffix("ich") {
            print("Suffix is \"ich\"")
        } else if mySurname.hasSuffix("na") {
            print("Suffix is \"na\"")
        }
    }

}

