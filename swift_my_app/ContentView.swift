//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello, World!")
            Button(action: {
//                print("Button Tapped")
//                let url: URL = URL(string: "http://qiita.com/api/v2/items")!  // http error
                let url: URL = URL(string:  "https://api.github.com/repositories/31792824/issues")!
                let task: URLSessionTask = URLSession.shared.dataTask(with: url, completionHandler: {data, response, error in
                    do{
                        let json = try JSONSerialization.jsonObject(with: data!)
                        print("json!!!!!!!!")
                        print(json)
                    }
                    catch{
//                    print("data: \(String(describing: data))")
//                    print("response: \(String(describing: response))")
//                    print("error: \(String(describing: error))")
                    }
                })
                task.resume() //実行する
            }){
                Text("Button")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
