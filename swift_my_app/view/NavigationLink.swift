//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

struct MyNavigationLink: View {
    var body: some View {
        NavigationLink(destination: MyButton()) {
            Text("Push!")
        }
    }
}

//struct HelloWorld_Previews: PreviewProvider {
//    static var previews: some View {
//        HelloWorld()
//    }
//}
