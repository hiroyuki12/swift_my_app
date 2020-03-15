//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Fruit: Identifiable {
    var id: Int
    let name: String
}

struct MyList: View {
    let fruits: [Fruit] = [
        Fruit(id: 0, name: "Apple"),
        Fruit(id: 1, name: "Banana"),
        Fruit(id: 2, name: "Orange"),
        Fruit(id: 3, name: "Grape"),
        Fruit(id: 4, name: "WaterMelon"),
    ]
    
    var body: some View {
        VStack {
            Divider()
            List (fruits) { fruit in
                Text(fruit.name)
            }
            .edgesIgnoringSafeArea([.bottom])
        }
    }
}

//struct MyList_Previews: PreviewProvider {
//    static var previews: some View {
//        HelloWorld()
//    }
//}
