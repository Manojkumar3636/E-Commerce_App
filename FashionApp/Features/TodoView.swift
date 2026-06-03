//
//  TodoView.swift
//  FashionApp
//
//  Created by sham kumar s on 09/03/26.
//

import SwiftUI

struct TodoView: View {
    
    @StateObject private var viewModel = TodoViewModel()
    @State private var title: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.todoArray, id: \.title){ todo in
                    TodoDetailsView(todo: todo)
                        .onTapGesture {
                            viewModel.updateToDo(todo)
                        }
                        .swipeActions(edge: .trailing, allowsFullSwipe: true){
                            Button("Delete"){
                                viewModel.removeUser(todo: todo)
                            }
                        }
                }
                                                
                HStack {
                    TextField("Add A New Task", text: $title)
                        .textFieldStyle(.roundedBorder)
//                    Button {
//                        viewModel.addToDo(title)
//                        title = ""
//                        
//                    } label: {
//                        Text("Add")
//                    }
//                    .buttonStyle(.plain)
                }
                .padding(.horizontal)
            }
            .navigationTitle("Todo List")
        }
        .onAppear(perform: viewModel.fetchlists)
    }
}


struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView()
    }
}
