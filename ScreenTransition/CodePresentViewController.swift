//
//  CodePresentViewController.swift
//  ScreenTransition
//
//  Created by hklife_mo on 2021/09/14.
//

import UIKit

class CodePresentViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    weak var delegate: SendDataDelegate?
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    

    @IBAction func baciAction(_ sender: UIButton) {
        if let name = name {
            self.delegate?.sendData(name: name)
        }
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
