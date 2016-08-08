//
//  ChosenNotebookTableViewController.swift
//  ProjectMoment
//
//  Created by Hyunkyu Lee on 8/6/16.
//  Copyright © 2016 Hyunkyu Lee. All rights reserved.
//

import UIKit

class ChosenNotebookTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    struct Cells {
        static let Note = "Note Cell Identifier"
    }

    private var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: UIScreen.mainScreen().bounds, style: .Plain)
        tableView?.dataSource = self
        tableView?.delegate = self
        tableView?.autoresizingMask = UIViewAutoresizing.FlexibleHeight
        self.view = tableView
        updateNavigationBar()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table View Data Source
    
    var howMany: Int = 5                                                        // TODO: - Remove in favor of using the Notebook Data Object as the model
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(Cells.Note)
        if cell == nil {
            cell = UITableViewCell(style: .Subtitle, reuseIdentifier: Cells.Note)
            update(cell)
        }
        return cell!
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return howMany
    }
    

    // MARK: - UI
    
    private var searchButton = UIBarButtonItem(barButtonSystemItem: .Search, target: nil, action: nil)
    private var moreButton = UIBarButtonItem(title: "…", style: .Plain, target: nil, action: nil)
    private var filterButton = UIBarButtonItem(title: "Filter", style: .Plain, target: nil, action: nil)
    
    private func updateNavigationBar() {
        self.navigationItem.rightBarButtonItems = [searchButton,filterButton, moreButton]
        self.title = "\(howMany)"
        // More stuff with notebook, such as color and what not
    }
    
    private func update(cell: UITableViewCell?) {
        // Use notebook as model and pass it in when incorporating Core Data later
        cell?.textLabel?.text = "something"
        cell?.detailTextLabel?.text = "detail"
        print(cell?.textLabel?.attributedText?.size())
        // Flags
        let flagFrame = CGRect(x: 0, y: 0, width: 10, height: (cell?.bounds.height)!)
        let flagView = UIView(frame: flagFrame)
        flagView.backgroundColor = UIColor.redColor().colorWithAlphaComponent(0.1)
        cell?.contentView.addSubview(flagView)
        // Time
        // Location
        // add image view if necessary
        
    }

}
