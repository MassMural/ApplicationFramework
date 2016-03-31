//
//  StreetViewController.swift
//  MassMural
//
//  Created by Anisha Gupta on 3/30/16.
//  Copyright © 2016 MassGroup. All rights reserved.
//

import UIKit
import MapKit

class StreetViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var streetView: MKMapView!
    var long:Double = 0.0
    var lat:Double = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        if long == 0.0 {
            let pin = Pin(coordinate: streetView.userLocation.coordinate)
            streetView.addAnnotation(pin)
        }

        // Do any additional setup after loading the view.
    }
    
    func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude,
            longitude: userLocation.coordinate.longitude)
        let width = 10000.0 // meters
        let height = 10000.0
        let region = MKCoordinateRegionMakeWithDistance(center, width, height)
        mapView.setRegion(region, animated: true)
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
