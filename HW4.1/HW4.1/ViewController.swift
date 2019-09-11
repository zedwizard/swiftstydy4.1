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
//        countNameSymbols("Ivanblablavan")
        //Task 2
//        checkSurnameSuffix("Vasilevich")
        //Task 3
//        divideMergedName("IvanVasilevich")
        //Task 4
//        mirrorWord("Ось", printAnswer: true)
        //Task 5
        insertComasToNumber(1234567890123456789)
        
    }
    //    Задача 1. Создать строку с своим именем, вывести количество символов содержащихся в ней.
    func countNameSymbols(_ myName: String) {
        print("Name contain \(myName.count) symbols")
    }

    //    Задача 2. Создать строку с своим отчеством проверить его на окончание “ич/на”
    //    P.S. в классе написан метод который позволяет проверить на суффикс или префикс, найдите и используйте его.
    func checkSurnameSuffix(_ myPatronymicName: String) {
        //version 1
        if myPatronymicName.suffix(3) == "ich" {
            print("Suffix is \"ich\"")
        } else if myPatronymicName.suffix(3) == "na" {
            print("Suffix is \"na\"")
        }
        //version 2
        if myPatronymicName.hasSuffix("ich") {
            print("Suffix is \"ich\"")
        } else if myPatronymicName.hasSuffix("na") {
            print("Suffix is \"na\"")
        }
    }
    //    Задача 3. Cоздать строку, где слитно написано Ваши ИмяФамилия “IvanVasilevich"
    //    Вам нужно разбить на две отдельных строки из предыдущей создать третью, где они обе будут разделены пробелом
    //    str1 = “Ivan”
    //    str2 = “Vasilevich”
    //    str3 = “Ivan Vasilevich"
    func divideMergedName(_ myName: String) {
        var name = ""
        var surname = ""
        var uppercaseSymbolQty = 0
        for character in myName {
            if character.isUppercase {
                uppercaseSymbolQty += 1
                if uppercaseSymbolQty == 2 {
                    name = surname
                    surname = ""
                    uppercaseSymbolQty = 0
                }
            }
            surname.append(character)
        }
        print("\(name)\n\(surname)\n\(name) \(surname)")
    }

    //    Задача 4. Вывести строку зеркально Ось → ьсО не используя reverse (посимвольно)
    func mirrorWord(_ word: String, printAnswer: Bool) -> String{
        var mirroredWordSymbolBySymbol = ""
        for i in word {
            mirroredWordSymbolBySymbol.insert(i, at: mirroredWordSymbolBySymbol.startIndex)
        }
        if printAnswer {
            print("Reversed word \(word) is \(mirroredWordSymbolBySymbol)")
        }
        return mirroredWordSymbolBySymbol
        
    }
    
    //    Задача 5. Добавить запятые в строку как их расставляет калькулятор
    //    1234567 → 1,234,567
    //    12345 → 12,345
    //    (не использовать встроенный метод для применения формата)
    func insertComasToNumber(_ num: Int) {
        let mirroredString = mirrorWord(String(num), printAnswer: false)
        var numWithComas = ""
        var counter: Int = 1
        for character in mirroredString {
            numWithComas.insert(character, at: numWithComas.endIndex)
            if counter % 3 == 0 {
                numWithComas.insert(",", at: numWithComas.endIndex)
            }
            counter += 1
        }
        print("\(num) → \(mirrorWord(numWithComas, printAnswer: false))")
    }
    
    
}

