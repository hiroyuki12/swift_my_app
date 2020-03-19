//
//  Section.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/18.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

struct MySection: View {
    var body: some View {
        List {
            Section(header: Text("Header1")) {
                Text("Setting1")
                Text("Setting")
            }
            Section(header: Text("Header2")) {
                Text("Setting3")
            }
        }
    }
}

