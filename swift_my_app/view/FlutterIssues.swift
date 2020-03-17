//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

struct FlutterIssues: View {
    
    var body: some View {
        Button(action: {
            let url: URL = URL(string:  "https://api.github.com/repositories/31792824/issues")!
            let task: URLSessionTask = URLSession.shared.dataTask(with: url, completionHandler: {data, response, error in
                do{
                    let json = try JSONSerialization.jsonObject(with: data!) as! [Any]
                    let top = json as NSArray // トップレベルが配列
                    for roop in top {
                        let next = roop as! NSDictionary
                        print(next["title"] as! String) // タイトル表示
                    }
                }
                catch{
                }
            })
            task.resume() //実行する
            
        }){
            Text("取得")
        }
    }
}

struct FlutterIssues_Previews: PreviewProvider {
    static var previews: some View {
        FlutterIssues()
    }
}
