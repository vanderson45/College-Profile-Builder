//
//  detailViewController.swift
//  College Profile Builder
//
//  Created by Victoria Anderson on 2/16/17.
//  Copyright © 2017 Students. All rights reserved.
//

import UIKit

class detailViewController: UIViewController
    

{
   var collegeDetail: CollegeClass!
    
        
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var schoolTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var numberOfStudentsTextField: UITextField!
    @IBOutlet weak var linkTextField: UITextField!
    
    
    
    
    let imagePicker = UIImagePickerController()
        
        override func viewDidLoad()
        {
            super.viewDidLoad()
            
            myImageView.image = collegeDetail.image
            
            schoolTextField.text = collegeDetail.school
            
            locationTextField.text = collegeDetail.location
            
            numberOfStudentsTextField.text = collegeDetail.numberOfStudents
            
            linkTextField.text = collegeDetail.link
            
            
        }
        
    
    @IBAction func safariButton(_ sender: Any)
    {
        var urlString = URL(string:collegeDetail.link)!
        UIApplication.shared.openURL(urlString)
    }
    
    
    @IBAction func saveButtonTapped(_ sender: Any)
    {
        
        collegeDetail.image = myImageView.image
       
        collegeDetail.school = schoolTextField.text!
       
        collegeDetail.location = locationTextField.text!
        
        collegeDetail.numberOfStudents = numberOfStudentsTextField.text!
        
        numberOfStudentsTextField.resignFirstResponder()
        
        collegeDetail.link = linkTextField.text!
    
    }
    
    
    
    




















}
