//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

struct ModalView: View {
    @State private var showingModal = false
    
    var body: some View {
        // Text("Modal View!")
        Button(action: {
            self.showingModal.toggle()
        }) {
            Text("Show Modal.")
        }.sheet(isPresented: $showingModal) {
            HelloWorld()
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
