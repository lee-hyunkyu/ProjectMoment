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
        self.view.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(1) // Otherwise the background is black
        
        let navigationBarHeight = self.navigationController?.navigationBar.frame.height
        
        let titleTextOrigin: CGPoint = {
            let x = self.view.frame.width*0.1
            let y = x + navigationBarHeight!
            return CGPoint(x: x, y: y)
        }()
        
        let titleTextFieldRect = CGRect(origin: titleTextOrigin, size: CGSize(width: self.view.frame.width*0.8, height: self.view.frame.height*0.1))
        
        titleTextField = UITextField(frame: titleTextFieldRect)
        titleTextField?.placeholder = "Hello"
        
        let noteTextOrigin: CGPoint = {
            let x = self.view.frame.width*0.1
            let y = (titleTextField?.frame.maxY)! + 8                              // TODO: - Change this arbitrary  number to a variable
           
            return CGPoint(x: x, y: y)
        }()
        
        let noteTextFieldRect = CGRect(origin: noteTextOrigin, size: CGSize(width: titleTextField!.frame.width, height: titleTextField!.frame.height))
        
        noteTextField = UITextField(frame: noteTextFieldRect)
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
