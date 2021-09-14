//
//  ViewController.swift
//  ScreenTransition
//
//  Created by hklife_mo on 2021/09/14.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func codePush(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePushView") as? CodePushViewController else { return }
        
        viewController.name = "youngmo"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func codePresent(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresent") as? CodePresentViewController else {
            return
        }
        
        viewController.delegate = self
        viewController.name = "코드네임"
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SeguePushViewController {
            
            viewController.name = "prepare로 넘어온 이름"
        }
    }
}

