//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

struct MyTextField: View {

    @State var name: String = "John"

    var body: some View {
        TextField("Name's placeholder", text: $name)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
    }
}

//struct HelloWorld_Previews: PreviewProvider {
//    static var previews: some View {
//        HelloWorld()
//    }
//}
