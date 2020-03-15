//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

struct MyTabView: View {
    var body: some View {
        TabView {
            Text("The First Tab")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
        .font(.headline)
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
