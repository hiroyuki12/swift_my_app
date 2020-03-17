//
//  ContentView.swift
//  swift_my_app
//
//  Created by hiroyuki on 2020/03/14.
//  Copyright © 2020 hiroyuki. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Todo:Codable,Identifiable {
   let userId,id:Int
   let title:String
   let completed:Bool
}

typealias Todos = [Todo]
class TodoDownloader:ObservableObject{
   @Published var todos:Todos = [Todo]()
   let todosEndpoint = "https://jsonplaceholder.typicode.com/todos/"
    
   init() {
       guard let url = URL(string: todosEndpoint) else {return}
       URLSession.shared.dataTask(with: url){(data,response,error) in
           do{
               guard let data = data else{return}
               let todos = try JSONDecoder().decode(Todos.self,from: data)
               DispatchQueue.main.async {
                   self.todos = todos
               }
           }catch{
               print("error")
           }
           
       }.resume()
   }
}

struct MyCordable: View {
    @ObservedObject var todoData = TodoDownloader()
    var body: some View {
       NavigationView{
           List(self.todoData.todos){ todo in
               VStack(alignment: .leading){
                 Text(todo.title)
                //  Text(String(todo.id))
               }
           }
           .navigationBarTitle(Text("To Do List"))
       }
    }
}

//struct HelloWorld_Previews: PreviewProvider {
//    static var previews: some View {
//        HelloWorld()
//    }
//}
