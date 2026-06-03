//
//  TodoViewModel.swift
//  FashionApp
//
//  Created by sham kumar s on 09/03/26.
//

import Foundation

class TodoViewModel: ObservableObject {
    
    
    @Published var todoArray: [TodoModel] = []
    
    func fetchlists() {
        
        todoArray = [TodoModel(title: "Grocery Shopping", status: false),
                     TodoModel(title: "Medicine Purchase", status: false)]
    }
    
//    func addToDo(_ title: String) {
//        
//        if title.isEmpty {
//            return
//        } else {
//            let todo = TodoModel(title: title, status: false)
//            self.todoArray.append(todo)
//        }
//        
//        
//    }
    
    func updateToDo(_ todo: TodoModel) {
        guard let index = todoArray.firstIndex(where: {$0.title == todo.title}) else {
            return
        }
        todoArray[index].status.toggle()
    }
    
    func removeUser(todo: TodoModel){
        guard let index = todoArray.firstIndex(where: {$0.title == todo.title}) else {
            return
        }
        todoArray.remove(at: index)
    }
}
