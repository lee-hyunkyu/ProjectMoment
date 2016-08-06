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
    

}
