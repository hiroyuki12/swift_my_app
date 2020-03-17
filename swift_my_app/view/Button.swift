//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

struct MyButton: View {
    var body: some View {
        Button(action: {
            print("Button Tapped")
        }){
            Image(systemName: "play.circle")
            Text("Button")
        }
//        Button("Button") {
//            print("Button Tapped")
//        }
    }
}

//struct MyButton_Previews: PreviewProvider {
//    static var previews: some View {
//        HelloWorld()
//    }
//}
