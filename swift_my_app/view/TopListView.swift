//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

struct TopListView: View {

    // Sample mock data
    let eventsData: [Event]
    = [Event(id: 1,
             title: "YUMEMI.swift #1 ~WWDC19報告会~",
             subTitle: "サブタイトル(キャッチ)",
             eventUrl: "https://yumemi.connpass.com/event/131175/",
             hashTag: "yumemi_swift",
             startDate: "2019-06-24T19:00:00+09:00",
             endDate: "2019-06-24T21:30:00+09:00",
             place: "株式会社ゆめみ",
             address: "東京都世田谷区",
             lat: "35.641587300000",
             lon: "139.669071500000",
             ownerDisplayName: "株式会社ゆめみ"),
       Event(id: 2,
             title: "YUMEMI.swift #2",
             subTitle: "サブタイトル(キャッチ)",
             eventUrl: "",
             hashTag: "yumemi_swift",
             startDate: "2019-11-29T19:30:00+09:00",
             endDate: "2019-11-29T21:30:00+09:00",
             place: "株式会社ゆめみ",
             address: "東京都世田谷区",
             lat: "35.641587300000",
             lon: "139.669071500000",
             ownerDisplayName: "株式会社ゆめみ")
    ]

    // let eventsData: [Event] = mockEventsData


    // Flutter Issues
    // private let urlLink = "https://api.github.com/repositories/31792824/issues"
    // private let url = "https://api.github.com/repositories/31792824/issues"

    // このプロパティに変更があった際にイベント発行
    // @Published var eventData: [Event] = []
    
    // init() {
    //     fetchEventData()
    // }

    // func fetchEventData() {
    //     let task: URLSessionTask = URLSession.shared.dataTask(with: url, completionHandler: {data, response, error in
    //     // URLSession.shared.dataTask(with: URL(string: url)!) { (data, response, error) in
    //         guard let data = data else { return }
    //         let decoder: JSONDecoder = JSONDecoder()
    //         do{
    //             let json = try JSONSerialization.jsonObject(with: data!)
    //             let top = json as! NSArray // トップレベルが配列
    //             // for roop in top {
    //             //     let next = roop as! NSDictionary
    //             //     print(next["title"] as! String) // タイトル表示
    //             // }
    //             DispatchQueue.main.async {
    //                 // self.eventData = json.events.reversed()
    //                 self.eventData = top.events.reversed()
    //             }
    //         }
    //         catch{
    //         }
    //     })
    //     // URLSession.shared.dataTask(with: URL(string: url)!) { (data, response, error) in
    //     //     guard let data = data else { return }
    //     //     let decoder: JSONDecoder = JSONDecoder()
    //     //     do {

    //     //         // let searchedResultData = try decoder.decode(StudyGroup.self, from: data)
    //     //         // DispatchQueue.main.async {
    //     //         //     self.eventData = searchedResultData.events.reversed()
    //     //         // }
    //     //     } catch {
    //     //         print("json convert failed in JSONDecoder. " + error.localizedDescription)
    //     //     }
    //     // }.resume()
    // }.resume()


    var body: some View {
        NavigationView {
            List(eventsData) { event in
                Text("Hello World!")
                // NavigationLink(destination: EventDetailView(eventData: event)) {
                //     EventRowView(eventData: event)
                // }
            }
            // .navigationBarTitle(Text("YUMEMI.swift一覧"))
        }
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
        TopListView()
    }
}

struct Event: Decodable, Identifiable {
    var id: Int
    var title: String
    var subTitle: String
    var eventUrl: String
    var hashTag: String
    var startDate: String
    var endDate: String
    var place: String
    var address: String
    var lat: String
    var lon: String
    var ownerDisplayName: String

    enum CodingKeys: String, CodingKey {
        case id = "event_id"
        case title = "title"
        case subTitle = "catch"
        case eventUrl = "event_url"
        case hashTag = "hash_tag"
        case startDate = "started_at"
        case endDate = "ended_at"
        case place = "place"
        case address = "address"
        case lat = "lat"
        case lon = "lon"
        case ownerDisplayName = "owner_display_name"
    }
}