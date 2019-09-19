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
//        insertComasToNumber(1234567890123456789)
        //Task 6
        checkPasswordStrength("32556reWDr&")
        
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
    
    //    Задача 6. Проверить пароль на надежность от 1 до 5
    //    a) если пароль содержит числа +1
    //    b) символы верхнего регистра +1
    //    c) символы нижнего регистра +1
    //    d) спец символы +1
    //    e) если содержит все вышесказанное
    //    Пример:
    //    123456 - 1 a)
    //    qwertyui - 1 c)
    //    12345qwerty - 2 a) c)
    //    32556reWDr - 3 a) b) c)
    func checkPasswordStrength (_ password: String) {
        var containArray: [Bool] = [false, false, false, false, false]
        var strengthLevel: Int = 0
        var typeOfSymbols = ""
        for character in password {
            if character.isNumber && containArray[0] == false {
                containArray[0] = true // contain number
            }
            if character.isUppercase && containArray[1] == false {
                containArray[1] = true // contain uppercase letter
            }
            if character.isLowercase && containArray[2] == false {
                containArray[2] = true //contain lowercase letter
            }
            if (character.isLetter || character.isNumber) && containArray[3] == false {
                containArray[3] = true // contain special symbol
            }
        }
        if containArray[0] && containArray[1] && containArray[2] && containArray[3] == true {
            containArray[4] = true //contain all kind of symbols
        }
        for i in 0..<containArray.count {
            if containArray[i] == true {
                strengthLevel += 1
                switch
                    i {
                case 0:
                    typeOfSymbols.append(" a)")
                case 1:
                    typeOfSymbols.append(" b)")
                case 2:
                    typeOfSymbols.append(" c)")
                case 3:
                    typeOfSymbols.append(" d)")
                case 4:
                    typeOfSymbols.append(" e)")
                default:
                    return
                }
            }
            //\u{24}
        }
        print("\(password) - \(strengthLevel)\(typeOfSymbols)")
    }
    
    //    II. Прочесть главу "Collection Types" - swift book.ru
    //    Задача 7. Сортировка массива не встроенным методом по возрастанию + удалить дубликаты
    //    [9, 1, 2, 5, 1, 7]
    
    //    Задача 8. Написать метод, который будет переводить строку в транслит.
    //    Пример:
    //    print(convertStrToTranslite:”ЯЗЗЬ”) → “YAZZ”
    //    print(convertStrToTranslite:”морДа”) → “morDa”
    
    //    Задача 9. Сделать выборку из массива строк в которых содержится указанная строка
    //    [“lada”, “sedan”, “baklazhan”] search “da”
    //    → [“lada”, “sedan”] - sort() && sort using NSPredicate + manual (for loop)
    
    //    Задача 10. Set<String> - antimat [“fuck”, “fak”] “hello my fak” “hello my ***”
    //    использовать Set или NSSet для программы antimat - исключить из предложения все слова содержащиеся в сете
}

