//
//  Capital1.swift
//  TierOneApp
//
//  Created by CRESS, CONNER on 1/10/17.
//  Copyright © 2017 CRESS, CONNER. All rights reserved.
//

import MapKit
import UIKit
    

    
    class Capital1: NSObject, MKAnnotation {
        var title: String?
        var coordinate: CLLocationCoordinate2D
        var info: String
        
        init(title: String, coordinate: CLLocationCoordinate2D, info: String) {
            self.title = title
            self.coordinate = coordinate
            self.info = info
        }
}
