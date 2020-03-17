//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

struct MyGeometryReader: View {
    var body: some View {        
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Text("Left")
                    .frame(width: geometry.size.width / 2, height: 50)
                    .background(Color.green)
                Text("Right")
                    .frame(width: geometry.size.width / 2, height: 50)
                    .background(Color.blue)
                }
        }

        // HStack(spacing: 0) {
        //     Text("Left")
        //         .frame(width: UIScreen.main.bounds.width / 2, height: 50)
        //         .background(Color.green)
        //     Text("Right")
        //         .frame(width: UIScreen.main.bounds.width / 2, height: 50)
        //         .background(Color.blue)
        // }
    }
}

//struct MyGeometryReader_Previews: PreviewProvider {
//    static var previews: some View {
//        MyGeometryReader()
//    }
//}
