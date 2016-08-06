//
//  NewNoteViewController.swift
//  ProjectMoment
//
//  Created by Hyunkyu Lee on 8/6/16.
//  Copyright © 2016 Hyunkyu Lee. All rights reserved.
//

import UIKit

class NewNoteViewController: UIViewController {

    private var titleTextField: UITextField?
    private var noteTextField: UITextField?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(1)
        titleTextField = UITextField(frame: CGRect(x: 30, y: 70, width: 100, height: 30))
        titleTextField?.placeholder = "Hello"
        noteTextField = UITextField(frame: CGRect(x: 30, y: 100, width: 100, height: 30))
        noteTextField?.placeholder = "NoteTextField"
        self.view.addSubview(titleTextField!)
        self.view.addSubview(noteTextField!)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
