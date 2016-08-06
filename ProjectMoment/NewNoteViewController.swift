//
//  NewNoteViewController.swift
//  ProjectMoment
//
//  Created by Hyunkyu Lee on 8/6/16.
//  Copyright © 2016 Hyunkyu Lee. All rights reserved.
//

import UIKit

class NewNoteViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTextFields()
        updateNavigationBar()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - UI
    
    private var titleTextField: UITextField?
    private var noteTextField: UITextField?
    
    private func setTextFields() {
        self.view.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(1)
        titleTextField = UITextField(frame: CGRect(x: 30, y: 70, width: 100, height: 30))
        titleTextField?.placeholder = "Hello"
        noteTextField = UITextField(frame: CGRect(x: 30, y: 100, width: 100, height: 30))
        noteTextField?.placeholder = "NoteTextField"
        self.view.addSubview(titleTextField!)
        self.view.addSubview(noteTextField!)
    }
    
    private var addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: nil, action: nil)
    
    private func updateNavigationBar() {
        // set the title of the notebook, default notebook if no notebook selected
        // add more complicated code later
        self.navigationItem.rightBarButtonItem = addButton
        if titleTextField?.text == nil || noteTextField?.text == nil {          // TODO: - Change the color of the bar button item
            addButton.enabled = false
        } else {
            addButton.enabled = true
        }
    }
    

}
