//
//  ViewController.swift
//  light
//
//  Created by Юрий Руднев on 03/02/2020.
//  Copyright © 2020 Юрий Руднев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ligthOn = false
    
    @IBAction func buttonPress(_ sender: UIButton) {
        
        ligthOn = !ligthOn
        
        updateUI() // добавили сюда после добавления отдельной   функции updateUI
        
//        if ligthOn {
//            ligthOn = !ligthOn
//        } else {
//            ligthOn = !ligthOn
//        }

        
//        if ligthOn == true
//        {
//            ligthOn  = false
//        } else {
//            ligthOn = true
//        }
    }
    
    func updateUI () { // перенесли из @IBAction func buttonPress(_ sender: UIButton)
        
        view.backgroundColor = ligthOn ? .white : .black // то же, что функция ниже, только тернарный оператор
        
//        if ligthOn {
//            view.backgroundColor = .white
//        } else {
//            view.backgroundColor = UIColor.black // UIColor можно добавлять, а можно нет
//        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI() // добавили сюда после добавления отдельной   функции updateUI
    }


}

