//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation
import MapKit

struct MyMap: View {
    var body: some View {
        Map()
    }
}

struct Map : UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 35.681382, longitude: 139.76608399999998)  //TOKYO
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

//struct MyMap_Previews: PreviewProvider {
//    static var previews: some View {
//        MyMap()
//    }
//}

