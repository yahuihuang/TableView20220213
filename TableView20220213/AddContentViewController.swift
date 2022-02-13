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
            showAlert(title: "請至少輸入3個字元~")
        }
        
        if phone.count != 10 {
            showAlert(title: "請至少輸入10個字元~")
        }
    }
}

// 對所有UIViewController均生效
extension UIViewController {
    func showAlert(title: String) {
        let alertVC = UIAlertController(title: title, message: nil, preferredStyle: .actionSheet)
        let okButton = UIAlertAction(title: "確認OK.", style: .cancel)
        alertVC.addAction(okButton)
        self.present(alertVC, animated: true) {
            print("Finish the alert")
        }
    }
}
