//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

struct MyAlert: View {
    @State var showingAlert = false
    var body: some View {
        Button(action: {
            self.showingAlert = true
        }, label: {
            Text("Push Me!")
        }).alert(isPresented: self.$showingAlert) {
            Alert(
                title: Text("Title"),
                message: Text("Message"),
                primaryButton: .default(Text("Button1")) {
                    print("Button1")
                }, secondaryButton: .destructive(Text("Button2")) {
                    print("Button2")
                }
            )
        }
    }
}

struct MyAlert_Previews: PreviewProvider {
    static var previews: some View {
        MyAlert()
    }
}
