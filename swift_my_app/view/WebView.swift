//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation
import WebKit


struct MyWebView: View {
    var body: some View {
        WebView(loadUrl: "https://www.apple.com")
    }
}

struct WebView: UIViewRepresentable {
    var loadUrl:String

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: loadUrl)!))
    }
}

//struct MyWebView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyWebView()
//    }
//}
