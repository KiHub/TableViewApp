//
//  NamesViewController.swift
//  TableViewApp
//
//  Created by  Mr.Ki on 02.08.2021.
//

import UIKit

class NamesViewController: UITableViewController {
    
    let nameArray = ["Ivan", "Peter", "Dasha", "John", "Dan"]
    
    let familyArray = ["Ivanov", "Van Der Straat", "Swift", "Peterson", "Sokolov"]
    
    var fullNameArray = (name: "", family: "")
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       // fullNameArray = zip(nameArray, familyArray).map { ($0, $1) }
        
        fullNameArray = nameArray + familyArray
        
        for item in nameArray[0...] {
            <#code#>
        }
        
        
       // fullNameArray = nameArray.shuffled() + familyArray.shuffled()
        print(fullNameArray)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return nameArray.count
//    }
    
    func split(name: String) -> (firstName: String, lastName: String) {
        let split = name.components(separatedBy: " ")
        return (split[0], split[1])
    }

    let parts = split(name: "Paul Hudson")

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return nameArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)

        cell.textLabel?.text = nameArray[0]

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
