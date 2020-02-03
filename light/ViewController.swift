//
//  ViewController.swift
//  light
//
//  Created by Юрий Руднев on 03/02/2020.
//  Copyright © 2020 Юрий Руднев. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var isLightOn = false
    @IBAction func buttonPress(_ sender: UIButton) {
        
        isLightOn = !isLightOn
        updateView() // добавили сюда после добавления отдельной   функции updateUI
    }
    
    func updateView() {
        let device = AVCaptureDevice.default(for: AVMediaType.video)
        
        if let dev = device, dev.hasTorch {
            view.backgroundColor = .black
            do {
                try dev.lockForConfiguration()
                dev.torchMode = isLightOn ? .on : .off
                dev.unlockForConfiguration()
            } catch {
                print(error) }
        } else {
            view.backgroundColor = isLightOn ? .white : .black // то же, что функция ниже, только тернарный оператор

                }
            }

    var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateView()
    }

        }
    




