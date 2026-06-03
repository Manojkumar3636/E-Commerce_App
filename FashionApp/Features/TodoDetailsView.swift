//
//  TodoDetailsView.swift
//  FashionApp
//
//  Created by sham kumar s on 09/03/26.
//

import SwiftUI

struct TodoDetailsView: View {
   let todo: TodoModel
//    @State private var status: Bool = false
    var body: some View {
        HStack {

            VStack(alignment: .leading) {
                Text("Title: \(todo.title)")
                Text("Status: \(String(todo.status))")
            }
            Spacer()
            Image(systemName: todo.status ? "circle.fill" : "circle")
                .foregroundColor(.green)
        }
    }
}
struct TodoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailsView(todo: TodoModel(title: "New Todo", status: false))
    }
}
