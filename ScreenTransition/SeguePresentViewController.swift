//
//  SeguePresentViewController.swift
//  ScreenTransition
//
//  Created by hklife_mo on 2021/09/14.
//

import UIKit

class SeguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


    @IBAction func backAction(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
