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
    
    // 收鍵盤
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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
            return
        }
        
        if phone.count != 10 {
            showAlert(title: "請至少輸入10個字元~")
            return
        }
        
        //UserDefaults
        let content = ["name": name, "phone": phone]
        let userDefault = UserDefaults.standard
        var contentList:[[String:String]] = (userDefault.value(forKey: "contentList") as? [[String:String]] ?? [])
        contentList.append(content)
        
        userDefault.set(contentList, forKey: "contentList")
        userDefault.synchronize()
        
        print(userDefault.value(forKey: "contentList") as! [[String:String]])
        
        self.myName.text = ""
        self.myTel.text = ""
        showAlert(title: "輸入成功!")
    }
}


