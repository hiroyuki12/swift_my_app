//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

struct MyImage: View {
    var body: some View {
        Image("lake")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
    }
}

// struct MyImage_Previews: PreviewProvider {
//     static var previews: some View {
//         MyImage()
//     }
// }

