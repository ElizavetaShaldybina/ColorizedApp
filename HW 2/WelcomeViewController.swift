//
//  WelcomeViewController.swift
//  HW 2
//
//  Created by Елизавета Шалдыбина on 19.10.2023.
//  Copyright © 2023 Alexey Efimov. All rights reserved.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nextVC = segue.destination as? ViewController else { return }
        nextVC.delegate = self
        nextVC.colorOfWelcomeViewConroller = view.backgroundColor ?? .white
    }

    @IBAction func unwind(for segue: UIStoryboardSegue) {
    }
    
}

extension WelcomeViewController: ViewControllerDelegate {
    func setColorWhenPushButton(_ color: UIColor) {
        view.backgroundColor = color
    }
}

