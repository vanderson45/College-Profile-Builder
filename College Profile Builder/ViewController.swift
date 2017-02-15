//
//  ViewController.swift
//  College Profile Builder
//
//  Created by Victoria Anderson on 2/8/17.
//  Copyright © 2017 Students. All rights reserved.
//

import UIKit

//Bring in table view datasource and delegate
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    @IBOutlet weak var myTableView: UITableView!
    
    var myCollegeObject:[CollegeClass] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollegeObject.append(CollegeClass(School: "Michigan State", Location: "Lansing", NumberOfStudents: "30,000", Image: UIImage(named: "defualt")!))
        myCollegeObject.append(CollegeClass(School: "Indiana", Location: "Bloomington", NumberOfStudents: "25,000", Image: UIImage(named: "defualt")!))
        myCollegeObject.append(CollegeClass(School: "Florida State", Location: "Tallahassee", NumberOfStudents: "35,000", Image: UIImage(named: "defualt")!))
       
        
    }
    //add to list of movies
    @IBAction func addButtonTapped(_ sender: Any)
    {
        let  alert = UIAlertController(title: "add school", message: nil, preferredStyle: .alert)
        
        alert.addTextField{ (schoolTextField) in schoolTextField.placeholder = "add school"
        }
        
        alert.addTextField{ (locationTextField) in locationTextField.placeholder = "add location"
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(cancelAction)
        
        let addAction = UIAlertAction(title: "Add", style: .default)
        {
            (action) in
            let schoolTextField = alert.textFields?[0]
            let locationTextField = alert.textFields?[1]
            
            
            self.myCollegeObject.append(CollegeClass(School: (schoolTextField?.text)!, Location: (locationTextField?.text)!))
            
            self.myTableView.reloadData()
            
        }
        alert.addAction(addAction)
        
        present(alert, animated: true, completion: nil)
    }
    // required function - sets number of rows in TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return myCollegeObject.count
    }
    // required function - sets the cell in the TableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //sets cell indentifier
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = myCollegeObject[indexPath.row].school
        cell.detailTextLabel?.text = myCollegeObject[indexPath.row].location
        
        return cell
        
    }
    // Allows you to delete a row
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if (editingStyle == .delete)
        {
            myCollegeObject.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }
    
    
    
    
    
    
    
    
    
    
}
