//
//  ViewController.swift
//  MapBoxTestApp
//
//  Created by Mariano Molina on 27/11/15.
//  Copyright © 2015 Funka.la. All rights reserved.
//

import UIKit
import Mapbox

class ViewController: UIViewController, MGLMapViewDelegate {
    
    var mapView: MGLMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initialize the map view
        mapView = MGLMapView(frame: view.bounds, styleURL: MGLStyle.lightStyleURL())
        //mapView.autoresizingMask = [.FlexibleWidth | .FlexibleHeight] // Xcode error!
        // set the maps conter coordinate
        mapView.setCenterCoordinate(CLLocationCoordinate2D(latitude: 38.894368, longitude: -77.036487), zoomLevel: 15, animated: false)
        // add mapView
        view.addSubview(mapView)
        // map delegate
        mapView.delegate = self
        
        let point = MGLPointAnnotation()
        point.coordinate = CLLocationCoordinate2D(latitude: 38.894368, longitude: -77.036487)
        point.title = "Hello world!"
        point.subtitle = "Welcome to The Ellipse."
        
        mapView.addAnnotation(point)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(mapView: MGLMapView, imageForAnnotation annotation: MGLAnnotation) -> MGLAnnotationImage? {
        return nil
    }
    
    func mapView(mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
        return true
    }


}

