//
//  CollegeClass.swift
//  College Profile Builder
//
//  Created by Victoria Anderson on 2/8/17.
//  Copyright © 2017 Students. All rights reserved.
//


    import UIKit
    
    class CollegeClass: NSObject
    {
        var school = ""
        var location = ""
        var numberOfStudents = ""
        var image = UIImage(named: "defualt")
        var link = ""
        
        init(School:String, Location:String, NumberOfStudents:String, Image:UIImage, Link: String)
        {
            school = School
            location = Location
            numberOfStudents = NumberOfStudents
            image = Image
            link = Link
        }
        
        init(School:String, Location:String)
        {
            school = School
            location = Location
            
        }
    }




