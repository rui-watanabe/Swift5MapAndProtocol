//
//  ViewController.swift
//  Swift5MapAndProtocol
//
//  Created by watar on 2019/09/26.
//  Copyright © 2019 rui watanabe. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController,CLLocationManagerDelegate,UIGestureRecognizerDelegate{
    
    @IBOutlet weak var settingButton: UIButton!
    
    @IBOutlet weak var mapView: MKMapView!
    
    var locManager:CLLocationManager!
    
    
    @IBOutlet weak var addressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingButton.backgroundColor = .white
        settingButton.layer.cornerRadius = 20.0
    }


}

