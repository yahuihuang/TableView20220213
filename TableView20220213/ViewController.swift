//
//  ViewController.swift
//  TableView20220213
//
//  Created by grace on 2022/2/13.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 5
        var numberOfRows = Int.random(in: 1...10)
        return numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let redCell = UITableViewCell()
        redCell.backgroundColor = UIColor.yellow
        return redCell
    }
    
}

