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
                    
                    NavigationLink(destination: MyActionSheet()) {
                        Text("ActionSheet")
                    }
                    NavigationLink(destination: MyAlert()) {
                        Text("Alert")
                    }
                    NavigationLink(destination: MyButton()) {
                        Text("Button")
                    }
                    NavigationLink(destination: MyCordable()) {
                        Text("Cordable")
                    }
                    NavigationLink(destination: DarkTheme()) {
                        Text("DarkTheme")
                    }
                    NavigationLink(destination: FlutterIssues()) {
                        Text("Flutter Issues")
                    }
                    NavigationLink(destination: MyForm()) {
                        Text("Form")
                    }
                    NavigationLink(destination: MyGeometryReader()) {
                        Text("GeometryReader")
                    }
                    
                }
                
                Group {
                    NavigationLink(destination: HelloWorld()) {
                        Text("HelloWorld")
                    }
                    NavigationLink(destination: MyImage()) {
                        Text("Image")
                    }
                    NavigationLink(destination: MyList()) {
                        Text("List")
                    }
                    NavigationLink(destination: MyMap()) {
                        Text("Map")
                    }
                    NavigationLink(destination: ModalView()) {
                        Text("Modal View")
                    }
                    NavigationLink(destination: MyNavigationLink()) {
                        Text("NavigationLink")
                    }
                    NavigationLink(destination: MyPicker()) {
                        Text("Picker")
                    }
                    NavigationLink(destination: MySection()) {
                        Text("Section")
                    }
                    NavigationLink(destination: SFSymbols()) {
                        Text("SFSymbols")
                    }
                    
                    
                }

               Group {
                    NavigationLink(destination: MyTabView()) {
                        Text("TabView")
                    }
                    NavigationLink(destination: MyTextField()) {
                        Text("TextField")
                    }
                    NavigationLink(destination: TopListView()) {
                        Text("Top ListView")
                    }
                    NavigationLink(destination: MyWebView()) {
                        Text("WebView")
                    }

               }
                
                
            }
        }
//        NavigationView {
//            NavigationLink(destination: MyAlert()) {
//                Text("Alert")
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

