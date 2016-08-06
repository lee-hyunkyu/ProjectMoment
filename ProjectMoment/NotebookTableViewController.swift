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
    
    private var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: UIScreen.mainScreen().bounds, style: .Plain)
        tableView?.autoresizingMask = UIViewAutoresizing.FlexibleHeight
        tableView?.delegate = self
        tableView?.dataSource = self
        self.view = tableView
        updateNavigationBar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Table View Data Source
    
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
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let chosenNotebookVC = ChosenNotebookTableViewController()
        chosenNotebookVC.howMany = indexPath.row
        self.showViewController(chosenNotebookVC, sender: tableView.cellForRowAtIndexPath(indexPath))
        
        
    }
    
    // MARK: - UI
    
    private let settingsButton  = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Bookmarks, target: nil, action: nil)    // TODO - set target/action
    private let searchButton    = UIBarButtonItem(barButtonSystemItem: .Search, target: nil, action: nil)
    private let filterButton    = UIBarButtonItem(title: "Filter", style: .Plain, target: nil, action: nil)
    private let moreButton      = UIBarButtonItem(title: "…", style: .Plain, target: nil, action: nil)
    
    private func updateNavigationBar() {
        self.navigationItem.leftBarButtonItems = [settingsButton, searchButton]
        self.navigationItem.title = getDate()                                   // Use titleview instead?
        self.navigationItem.rightBarButtonItems = [filterButton, moreButton]
    }
    
    private func getDate() -> String {
        let currentDate = NSDate()
        let formatter = NSDateFormatter()
        formatter.dateStyle = NSDateFormatterStyle.ShortStyle
        formatter.dateFormat = "MMM d"                                          // http://www.unicode.org/reports/tr35/tr35-31/tr35-dates.html#Date_Format_Patterns
        return formatter.stringFromDate(currentDate)
    }
    
    // Mark: - Navigation
    
    
    
    


}

