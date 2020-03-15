//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

struct MyActionSheet: View {
    @State var isShown = false
    var body: some View {
        Button(action: {
            self.isShown = true
        }) {
            Text("Show ActionSheet")
        }.actionSheet(isPresented: $isShown, content: {
            ActionSheet(
                title: Text("Title"),
                message: Text("Message"),
                buttons: [.default(Text("Default")),
                          .destructive(Text("Destructive")),
                          .cancel()]
            )
        })
    }
}

//struct MyActionSheet_Previews: PreviewProvider {
//    static var previews: some View {
//        MyActionSheet()
//    }
//}
