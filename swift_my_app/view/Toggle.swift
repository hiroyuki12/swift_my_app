//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

struct MyToggle: View {

    @State var isShowing = true // toggle state

    var body: some View {
        Toggle(isOn: $isShowing) {
            Text("Hello World")
        }
    }
}

//struct HelloWorld_Previews: PreviewProvider {
//    static var previews: some View {
//        HelloWorld()
//    }
//}
