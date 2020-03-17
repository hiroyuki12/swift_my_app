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
            VStack{
                Group {
                    NavigationLink(destination: FlutterIssues()) {
                        Text("NavigationLink Flutter Issues")
                    }
                    NavigationLink(destination: HelloWorld()) {
                        Text("NavigationLink HelloWorld")
                    }
                    NavigationLink(destination: MyImage()) {
                        Text("NavigationLink Image")
                    }
                    NavigationLink(destination: MyActionSheet()) {
                        Text("NavigationLink ActionSheet")
                    }
                    NavigationLink(destination: MyAlert()) {
                        Text("NavigationLink Alert")
                    }
                    NavigationLink(destination: MyTabView()) {
                        Text("NavigationLink TabView")
                    }
                    NavigationLink(destination: MyList()) {
                        Text("NavigationLink List")
                    }
                    NavigationLink(destination: MyPicker()) {
                        Text("NavigationLink Picker")
                    }
                }
                
                NavigationLink(destination: MyButton()) {
                    Text("NavigationLink Button")
                }
                NavigationLink(destination: SFSymbols()) {
                    Text("NavigationLink SFSymbols")
                }
                NavigationLink(destination: MyWebView()) {
                    Text("NavigationLink WebView")
                }
                NavigationLink(destination: TopListView()) {
                    Text("NavigationLink Top ListView")
                }
                NavigationLink(destination: ModalView()) {
                    Text("NavigationLink Modal View")
                }
                NavigationLink(destination: MyMap()) {
                    Text("NavigationLink Map")
                }
                
                
            }
        }
//        NavigationView {
//            NavigationLink(destination: MyAlert()) {
//                Text("NavigationLink Alert")
//            }
//        }
        
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

