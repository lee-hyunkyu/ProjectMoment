//
//  ViewController.swift
//  ProjectMoment
//
//  Created by Hyunkyu Lee on 8/5/16.
//  Copyright © 2016 Hyunkyu Lee. All rights reserved.
//

import UIKit

class NotebookTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    struct Cells {
        static let Notebook = "Notebook Cell Identifier"
    }
    
    var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: UIScreen.mainScreen().applicationFrame, style: .Plain)
        tableView?.autoresizingMask = UIViewAutoresizing.FlexibleHeight
        tableView?.delegate = self
        tableView?.dataSource = self
        self.view = tableView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(Cells.Notebook)
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: Cells.Notebook)
        }
        cell?.textLabel?.text = "\(indexPath.row)"
        return cell!
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }


}

