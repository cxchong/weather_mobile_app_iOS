//
//  myTableViewController.swift
//  564_homework2
//
//  Created by Chong Xu on 9/19/19.
//  Copyright © 2019 Chong Xu. All rights reserved.
//

import UIKit

class myTableViewController:UITableViewController {
    var weathers:[String] = ["Durham","Chapel Hill","Carrboro","Morrisville","Raleigh","Cary"]
    var weatherDescription:[String] = ["78","78","77","80","81","82"]
    var weatherCondition:[String] = ["cloudy","sunny","sunny","cloudy","rain","rain"]
    var pictures: [UIImage] = [UIImage(named:"cloudy2")!,UIImage(named:"sunny2")!,UIImage(named:"sunny2")!,UIImage(named:"cloudy2")!,UIImage(named:"cloudy2")!,UIImage(named:"rainy2")!]
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tableView.isEditing = true
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.weathers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! myTableViewCell
        cell.firstLabel?.text = self.weathers[indexPath.row]
        cell.secondLabel?.text = self.weatherDescription[indexPath.row]
        cell.thirdLabel?.text = self.weatherCondition[indexPath.row]
        cell.myImageView?.image = self.pictures[indexPath.row]

        return cell
    }
    override func tableView(_ tableView:UITableView,titleForHeaderInSection section: Int)->String?{
        return "Weathers\(section)"
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            weathers.remove(at: indexPath.row)
            weatherDescription.remove(at: indexPath.row)
            weatherCondition.remove(at: indexPath.row)
            pictures.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

   /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let itemToMove = weathers[fromIndexPath.row]
        let itemToMove1 = weatherDescription[fromIndexPath.row]
        let itemToMove2 = weatherCondition[fromIndexPath.row]
        let itemToMove3 = pictures[fromIndexPath.row]
        weathers.remove(at: fromIndexPath.row)
        weathers.insert(itemToMove, at: fromIndexPath.row)
        weatherDescription.remove(at: fromIndexPath.row)
        weatherDescription.insert(itemToMove1, at: fromIndexPath.row)
        weatherCondition.remove(at: fromIndexPath.row)
        weatherCondition.insert(itemToMove2, at: fromIndexPath.row)
        pictures.remove(at: fromIndexPath.row)
        pictures.insert(itemToMove3, at: fromIndexPath.row)


    }*/
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let destVC = segue.destination as! myDetailViewController
        //destVC.detailView?.text = "chongxu"
        //get the row that was selected
        let myRow = tableView!.indexPathForSelectedRow
        let currentCell = tableView!.cellForRow(at: myRow!) as! myTableViewCell
        //get detials for the cell
        let weatherLabelName: String = currentCell.firstLabel!.text!
        let weatherImage: UIImage = currentCell.myImageView!.image!
        destVC.weatherName = weatherLabelName
        destVC.weatherIma = weatherImage
    }
    

    @IBAction func startEditing(_ sender: Any) {
        tableView.isEditing = !tableView.isEditing
    }
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let ws = self.weathers[sourceIndexPath.row]
        let wD = self.weatherDescription[sourceIndexPath.row]
        let wC = self.weatherCondition[sourceIndexPath.row]
        let im = pictures[sourceIndexPath.row]
        weathers.remove(at: sourceIndexPath.row)
        weathers.insert(ws, at: destinationIndexPath.row)
        weatherDescription.remove(at: sourceIndexPath.row)
        weatherDescription.insert(wD, at: destinationIndexPath.row)
        weatherCondition.remove(at: sourceIndexPath.row)
        weatherCondition.insert(wC, at: destinationIndexPath.row)
        pictures.remove(at: sourceIndexPath.row)
        pictures.insert(im, at: destinationIndexPath.row)
        
    }

}
