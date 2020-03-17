//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

struct DarkTheme: View {
    
    //1. 現在の設定を取得
    @Environment(\.colorScheme) var colorScheme: ColorScheme

    var body: some View {
        Text("Hello World!")
        //2. 定義した変数のcolorSchemeを使って調べる(ダークテーマの場合は ColorScheme.dark)
        .foregroundColor(colorScheme == ColorScheme.light ? .black : .red)
    }
}

//struct DarkTheme_Previews: PreviewProvider {
//    static var previews: some View {
//        DarkTheme()
//    }
//}
