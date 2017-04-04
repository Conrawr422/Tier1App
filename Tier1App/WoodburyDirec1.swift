//
//  WoodburyDirec1.swift
//  TierOneApp
//
//  Created by CRESS, CONNER on 1/10/17.
//  Copyright © 2017 CRESS, CONNER. All rights reserved.
//
import UIKit
import MapKit

class WoodburyDirec1: UIViewController {
    
    @IBOutlet weak var mapview: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let woodbury = Capital1(title: "Woodbury Tier 1 Facility​", coordinate: CLLocationCoordinate2D(latitude: 44.9407306, longitude: -92.9135697), info: "Tier 1 Facility.")
        // Do any additional setup after loading the view, typically from a nib.
        
        let initialLocation = CLLocation(latitude: 44.9407306, longitude: -92.9135697)
        
        let regionRadius: CLLocationDistance = 1000
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                      regionRadius * 2.0, regionRadius * 2.0)
            mapview.setRegion(coordinateRegion, animated: true)
            
            
        }
        
        centerMapOnLocation(location: initialLocation)
        mapview.addAnnotation(woodbury)
    }
    
    
    
    
}
