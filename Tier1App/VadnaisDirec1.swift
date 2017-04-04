//
//  VadnaisDirec1.swift
//  TierOneApp
//
//  Created by CRESS, CONNER on 1/10/17.
//  Copyright © 2017 CRESS, CONNER. All rights reserved.
//
import UIKit
import MapKit

class VadnaisDirec1: UIViewController {
    
    @IBOutlet weak var mapview: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let vadnais = Capital2(title: "Vadnais Heights Tier 1 Facility​", coordinate: CLLocationCoordinate2D(latitude: 45.038475, longitude: -93.0565597), info: "Tier 1 Facility.")
        // Do any additional setup after loading the view, typically from a nib.
        
        let initialLocation = CLLocation(latitude: 45.038475, longitude: -93.0565597)
        
        let regionRadius: CLLocationDistance = 1000
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                      regionRadius * 2.0, regionRadius * 2.0)
            mapview.setRegion(coordinateRegion, animated: true)
            
            
        }
        
        centerMapOnLocation(location: initialLocation)
        mapview.addAnnotation(vadnais)
    }
    
    
    
    
}
