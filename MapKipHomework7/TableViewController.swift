//
//  TableViewController.swift
//  MapKipHomework7
//
//  Created by Madina Olzhabek on 26.12.2023.
//

import UIKit

class TableViewController: UITableViewController {
    var arrayPlaces = [Places(name: "MEGA Alma-Ata", address: "улица Розыбакиева 247А", phone: "8 (705) 956 7010", schedule: "10:00 - 22:00", image: "mega", latitude: 43.20086962156416,longitude: 76.89228329582062),
    Places(name: "Dostyk Plaza", address: "микрорайон Самал-2 111", phone: "8 (7272) 22 13 87", schedule: "10:00 - 22:00", image: "dostyk", latitude: 43.23349488806408, longitude: 76.95686251116314),
    Places(name: "Aport Mall", address: " проспект Райымбека", phone: "8 (727) 312 1313", schedule: "10:00 - 22:00", image: "aport", latitude: 43.23403572026285, longitude: 76.77739348232801),
    Places(name: "Esentai Mall", address: "проспект Aль-Фараби 77/8", phone: "8 (727) 330 8877", schedule: "10:00 - 22:00", image: "esentai", latitude: 43.21853913162085, longitude: 76.92763450931628)]

    override func viewDidLoad() {
        super.viewDidLoad()

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
        return arrayPlaces.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let image = cell.viewWithTag(100) as! UIImageView
        image.image = UIImage(named: arrayPlaces[indexPath.row].image)
        let name = cell.viewWithTag(101) as! UILabel
        name.text = arrayPlaces[indexPath.row].name
        let address = cell.viewWithTag(102) as! UILabel
        address.text = arrayPlaces[indexPath.row].address
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        145
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "detailVC") as! ViewController
        detailVC.places = arrayPlaces[indexPath.row]
        navigationController?.show(detailVC, sender: self)
        
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
