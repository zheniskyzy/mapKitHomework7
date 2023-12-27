//
//  ViewController.swift
//  MapKipHomework7
//
//  Created by Madina Olzhabek on 26.12.2023.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scheduleLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
   
    var places = Places()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        addressLabel.text = places.address
        scheduleLabel.text = places.schedule
        phoneLabel.text = places.phone
        imageView.image = UIImage(named: places.image)
        
    }
    
    @IBAction func showMap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailMapVC = storyboard.instantiateViewController(withIdentifier: "FullMapVC") as! mapViewController
        
        detailMapVC.mapLocations = places

        navigationController?.show(detailMapVC, sender: button)
    }
    
}

