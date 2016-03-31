//
//  LocationViewController.swift
//  MassMural
//
//  Created by Anisha Gupta on 3/30/16.
//  Copyright © 2016 MassGroup. All rights reserved.
//

import UIKit
import MapKit

class LocationViewController: UIViewController {

    var lat: Double = 0.0
    var long: Double = 0.0
    
    @IBOutlet weak var locationTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSubmit(sender: AnyObject) {
            let address = self.locationTextField.text
            
            let geocoder = CLGeocoder()
            geocoder.geocodeAddressString (address! as String, completionHandler: {(placemarks: [CLPlacemark]?, error: NSError?) -> Void in
                if let placemark = placemarks?[0] {
                    let ani = MKPointAnnotation()
                    ani.title = "Hello"
                    self.long = placemark.location!.coordinate.longitude
                    self.lat = placemark.location!.coordinate.latitude
                    print(self.long)
                    print(self.lat)
                }
            })

    }

    @IBAction func useCurrentLocation(sender: AnyObject) {
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    
            if let detailviewController: StreetViewController = segue.destinationViewController as? StreetViewController {
                    detailviewController.lat = self.lat
                detailviewController.long = self.long
                
            }
    }

}
