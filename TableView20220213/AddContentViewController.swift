//
//  AddContentViewController.swift
//  TableView20220213
//
//  Created by grace on 2022/2/13.
//

import UIKit

class AddContentViewController: UIViewController {

    @IBOutlet weak var myName: UITextField!
    @IBOutlet weak var myTel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("AddContentViewController viewWillAppear")
    }
    
    @IBAction func addContentAction(_ sender: Any) {
        let name = myName.text ?? ""
        let phone = myTel.text ?? ""
        print("myName is \(name), myPhone is \(phone)")
        if name.count <= 2 {
            let alertVC = UIAlertController(title: "Please input 3 characters", message: nil, preferredStyle: .actionSheet)
            let okButton = UIAlertAction(title: "I know.", style: .cancel)
            alertVC.addAction(okButton)
            self.present(alertVC, animated: true) {
                print("Finish the alert")
            }
        }
    }
}
