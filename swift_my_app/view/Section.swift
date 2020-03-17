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
            Section(header: Text("ヘッダー　項目１")) {
                Text("設定1")
                Text("設定2")
            }
            Section(header: Text("ヘッダー　項目２")) {
                Text("設定3")
            }
        }
    }
}

