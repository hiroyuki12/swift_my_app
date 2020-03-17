//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

//class TopListViewModel: ObservableObject {
//    let fetcher = StudyGroupEventFetcher()
//    @Published var eventData: [Event] = []
//
//    init() {
//        self.fetcher.fetchEventData { (events) in
//            self.eventData = events
//        }
//    }
//}

struct TopListView: View {
    
    let eventsData: [Event] = mockEventsData
//    @ObservedObject private var topListVM = TopListViewModel()
    
    var body: some View {
        List(eventsData) { event in
            NavigationLink(destination: EventDetailView(eventData: event)) {
                EventRowView(eventData: event)
            }
        }
        
        
        // Button(action: {
        //     let url: URL = URL(string:  "https://api.github.com/repositories/31792824/issues")!
        //     let task: URLSessionTask = URLSession.shared.dataTask(with: url, completionHandler: {data, response, error in
        //         do{
        //             let json = try JSONSerialization.jsonObject(with: data!) as! [Any]
        //             let top = json as NSArray // トップレベルが配列
        //             for roop in top {
        //                 let next = roop as! NSDictionary
        //                 print(next["title"] as! String) // タイトル表示
        //             }
        //         }
        //         catch{
        //         }
        //     })
        //     task.resume() //実行する
            
        // }){
        //     Text("取得")
        // }
    }
}

struct TopListView_Previews: PreviewProvider {
    static var previews: some View {
        TopListView()
    }
}

class StudyGroupEventFetcher: ObservableObject {

    // connpass's event search API
//    private let urlLink = "https://connpass.com/api/v1/event/?keyword=YUMEMI.swift"
    private let urlLink = "https://api.github.com/repositories/31792824/issues"
    
    // このプロパティに変更があった際にイベント発行
    @Published var eventData: [Event] = []

    init() {
        fetchEventData()
    }

    func fetchEventData() {
        URLSession.shared.dataTask(with: URL(string: urlLink)!) { (data, response, error) in
            guard let data = data else { return }
            let decoder: JSONDecoder = JSONDecoder()
            do {
                let searchedResultData = try decoder.decode(StudyGroup.self, from: data)
                DispatchQueue.main.async {
                    self.eventData = searchedResultData.events.reversed()
                }
            } catch {
                print("json convert failed in JSONDecoder. " + error.localizedDescription)
            }
        }.resume()
    }
}

struct Event: Decodable, Identifiable {
    var id: Int
    var title: String
    var eventUrl: String

    enum CodingKeys: String, CodingKey {
        case id = "event_id"
        case title = "title"
        case eventUrl = "event_url"
    }
}

struct StudyGroup: Decodable {
    var events: [Event]
}

let mockEventsData: [Event]
    = [Event(id: 1,
         title: "mockEventsData",
         eventUrl: "https://yumemi.connpass.com/event/131175/"),
       Event(id: 2,
           title: "YUMEMI.swift #1 ~WWDC19報告会~",
           eventUrl: "https://yumemi.connpass.com/event/131175/"),
       Event(id: 6,
             title: "YUMEMI.swift #5",
             eventUrl: "")
]

struct EventRowView: View {
    var eventData: Event
    
    var body: some View {
        Text(eventData.title)
    }
}

struct EventDetailView: View {
    var eventData: Event    // From ListView(静的モデル)
    
    var body: some View {
        Text(eventData.title)
    }
}
