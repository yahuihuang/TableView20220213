//
//  Utility.swift
//  TableView20220213
//
//  Created by grace on 2022/2/13.
//

import UIKit

// 對所有UIViewController均生效
extension UIViewController {
    func showAlert(title: String) {
        let alertVC = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "確認OK.", style: .cancel)
        alertVC.addAction(okButton)
        self.present(alertVC, animated: true) {
            print("Finish the alert")
        }
    }
}
