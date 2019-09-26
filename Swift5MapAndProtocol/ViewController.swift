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
    
    var addessString = ""
    
    @IBOutlet var longPress: UILongPressGestureRecognizer!
    
    @IBOutlet weak var settingButton: UIButton!
    
    @IBOutlet weak var mapView: MKMapView!
    
    var locManager:CLLocationManager!
    
    
    @IBOutlet weak var addressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingButton.backgroundColor = .white
        settingButton.layer.cornerRadius = 20.0
    }
    
    
    @IBAction func longPressTap(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .began{
        //タップを開始した時

            
        }else if sender.state == .ended{
        
        //タップを終了した時
        //タップした位置を取得して、MKMapView上の緯度、経度を取得する
            
        //緯度経度から住所に変換する
            
        }
        
    }
    
    func convert(lat:CLLocationDegrees,log:CLLocationDegrees){
        
        let geocoder = CLGeocoder()
        let location = CLLocation(latitude: lat, longitude: log)
        
        
       //クロージャー
        geocoder.reverseGeocodeLocation(location) { (placeMark, error) in
    
    if let placeMark = placeMark{
        if let pm = placeMark.first{
            if pm.administrativeArea != nil || pm.locality != nil{
                self.addessString = pm.name! + pm.administrativeArea! +  pm.locality!
            }else{
                self.addessString = pm.name!
            }
            self.addressLabel.text = self.addessString
        }
    }
            
        }
    }
    

}

