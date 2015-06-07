//
//  ViewController.swift
//  SimpleTable
//
//  Created by 夜游 on 15/6/7.
//  Copyright (c) 2015年 夜游. All rights reserved.
//

import UIKit

class SimpleTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var tableData: [String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableData = [String]()
        for i in 0...10 {
            var data = NSString(format: "Item %d", i) as String
            tableData.append(data)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIndentifier = "Cell"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIndentifier) as? UITableViewCell
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellIndentifier)
        }
        
        cell!.textLabel!.text = self.tableData[indexPath.row]
        
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("Table row \(indexPath.row) has been tapped")
        var message = "You Tapped row \(indexPath.row)"
        var alert = UIAlertView(title: "Row Tapped", message: message, delegate: self, cancelButtonTitle: "OK")   
        alert.show()
    }
}
























