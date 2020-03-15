//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: SubContentView()) {
                Text("Show SubContentView")
            }
        }
        
//        NavigationView {
//            Text("Hello World!")
//            // .navigationBarTitle(Text("Title"))
//            .navigationBarItems(trailing:
//                NavigationLink(destination: ContentView2()) {
//                    Text("Show ContentView2")
//                }
//            )
//        }

        // NavigationButton(destination: ContentView2()) {
        //     Text("Hello, World!")
        // }

        // Image("lake")
        //     .resizable()
        //     .scaledToFit()
        //     .clipShape(Circle())

        // List{
        //     Text("Hello, World!")
        //     Button(action: {
        //         let url: URL = URL(string:  "https://api.github.com/repositories/31792824/issues")!
        //         let task: URLSessionTask = URLSession.shared.dataTask(with: url, completionHandler: {data, response, error in
        //             do{
        //                 let json = try JSONSerialization.jsonObject(with: data!)
        //                 let top = json as! NSArray // トップレベルが配列
        //                 for roop in top {
        //                     let next = roop as! NSDictionary
        //                     print(next["title"] as! String) // タイトル表示
        //                 }
        //             }
        //             catch{
        //             }
        //         })
        //         task.resume() //実行する
        //     }){
        //         Text("取得")
        //     }
        // }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// 遷移先
struct SubContentView: View {
    var body: some View {
        Text("SubContentView")
    }
}
