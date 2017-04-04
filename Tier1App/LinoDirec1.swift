//
//  LinoDirec1.swift
//  TierOneApp
//
//  Created by CRESS, CONNER on 1/10/17.
//  Copyright © 2017 CRESS, CONNER. All rights reserved.
//
import UIKit
import MapKit

class Linodirec1: UIViewController, MKMapViewDelegate {
    
    
    @IBOutlet weak var mapview: MKMapView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set area in map and where to drop pin
        
        let lino = Capital(title: "Lino Lakes Tier 1 Facility​", coordinate: CLLocationCoordinate2D(latitude: 45.1789124, longitude: -93.1191225), info: "Tier 1 Facility.")
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let initialLocation = CLLocation(latitude: 45.1789124, longitude: -93.1191225)
        
        let regionRadius: CLLocationDistance = 1000
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                      regionRadius * 2.0, regionRadius * 2.0)
            mapview.setRegion(coordinateRegion, animated: true)
            
        }

            centerMapOnLocation(location: initialLocation)
            mapview.addAnnotation(lino)
        
        
    }
}
    
    

    
    



    

