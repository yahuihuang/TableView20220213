//
//  ViewController.swift
//  TableView20220213
//
//  Created by grace on 2022/2/13.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var myTableView: UITableView!
    
    let userDefault = UserDefaults.standard
    var contentList:[[String:String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
        
//        // 分隔線的樣式
//        myTableView.separatorStyle = .singleLine
//
//        // 分隔線的間距 四個數值分別代表 上、左、下、右 的間距
//        myTableView.separatorInset = UIEdgeInsets.init(top: 0, left: 20, bottom: 0, right: 20)
//
//        // 是否可以點選 cell
//        myTableView.allowsSelection = true
//
//        // 是否可以多選 cell
//        myTableView.allowsMultipleSelection = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController viewWillDisappear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("content view will appear")
        
        contentList = (userDefault.value(forKey: "contentList") as? [[String:String]] ?? [])
        // must reload for second times
        myTableView.reloadData()
    }
    
    //MARK: UITableViewDataSource, UITableViewDelegate
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentList.count
//        var numberOfRows = Int.random(in: 1...10)
//        return numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let redCell = UITableViewCell()
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "theTableViewCell")!
//        cell.backgroundColor = UIColor.red
//        cell.textLabel?.text = "\(indexPath)"
        
//        let theView = UIView(frame: CGRect(x: 10, y: 10, width: 250, height: 30))
//        theView.backgroundColor = UIColor.yellow
//
//        // subView過大也看得見
//        cell.clipsToBounds = false
//        cell.addSubview(theView)
        let cell = tableView.dequeueReusableCell(withIdentifier: "theTableViewCell") as! myTableViewCell
        cell.myName.text = contentList[indexPath.row]["name"]
        cell.myTel.text = contentList[indexPath.row]["phone"]
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 90
//    }
//

}

