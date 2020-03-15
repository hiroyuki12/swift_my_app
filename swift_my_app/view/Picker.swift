//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

struct MyPicker: View {
    var pokemons = ["Snorlax", "Pikachu", "Slowpoke", "Meowth"]
    @State private var selectedPokemon = 0
    var body: some View {
        Picker("Pokemon", selection: $selectedPokemon) {
            ForEach(0 ..< pokemons.count) {
            Text(self.pokemons[$0])
            }
        }.pickerStyle(WheelPickerStyle())
            .onReceive([self.selectedPokemon].publisher.first()) { (value) in
                print("selectedPokemon: \(value)")
                print(self.pokemons[value])
        }
    }
}

//struct MyPicker_Previews: PreviewProvider {
//    static var previews: some View {
//        HelloWorld()
//    }
//}
