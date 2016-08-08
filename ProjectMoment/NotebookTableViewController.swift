//
//  ViewController.swift
//  ProjectMoment
//
//  Created by Hyunkyu Lee on 8/5/16.
//  Copyright © 2016 Hyunkyu Lee. All rights reserved.
//

import UIKit
import CoreLocation

class NotebookTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    struct Cells {
        static let Notebook = "Notebook Cell Identifier"
    }
    
    private var tableView: UITableView?
    
    var manager: CLLocationManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: UIScreen.mainScreen().bounds, style: .Plain)
        tableView?.autoresizingMask = UIViewAutoresizing.FlexibleHeight
        tableView?.delegate = self
        tableView?.dataSource = self
        self.view = tableView
        updateNavigationBar()
        
        // Only ask for authorization when the authorizatino status is not explicitly deniced
        if CLLocationManager.authorizationStatus() == .NotDetermined {
            manager?.requestAlwaysAuthorization()
        }
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
    
    private var settingsButton: UIBarButtonItem!
    private var searchButton: UIBarButtonItem!
    private var filterButton: UIBarButtonItem!
    private var moreButton: UIBarButtonItem!
    
    private func updateNavigationBar() {

        // Settings Button
        let image = UIImage(imageLiteral: NavigationViewController.ImageLiterals.NavigationItemSettings)
        let settingsIcon = UIButton(frame: CGRect(x: 0, y: 0, width: image.size.width/2, height: image.size.height/2)) // TODO - Set the factor to be some calculated value depending on the device
        settingsIcon.setBackgroundImage(image, forState: .Normal)
        settingsIcon.adjustsImageWhenHighlighted = true
        settingsButton = UIBarButtonItem(customView: settingsIcon)             // TODO - set target/action

        searchButton = UIBarButtonItem(barButtonSystemItem: .Search, target: nil, action: nil)          // TODO: Don't use a system button
        
        // Filter Button
        // Filter Button
        let filterImage = UIImage(imageLiteral: NavigationViewController.ImageLiterals.NavigationItemFilter)
        let filterIcon = UIButton(frame: CGRect(x: 0, y: 0, width: filterImage.size.width/3, height: filterImage.size.height/3)) // TODO: - Remove arbitrary scaling numbers
        filterIcon.setBackgroundImage(filterImage, forState: .Normal)
        filterIcon.adjustsImageWhenHighlighted = true
        filterButton = UIBarButtonItem(customView: filterIcon)
        
        // More Button
        let moreImage = UIImage(imageLiteral: NavigationViewController.ImageLiterals.NavigationItemMore)
        let moreIcon = UIButton(frame: CGRect(x: 0, y:0, width: moreImage.size.width/3, height: moreImage.size.height/3))
        moreIcon.setBackgroundImage(moreImage, forState: .Normal)
        moreIcon.adjustsImageWhenHighlighted = true
        moreButton = UIBarButtonItem(customView: moreIcon)
        
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

