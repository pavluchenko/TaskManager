//
//  TaskViewModel.swift
//  TaskManager
//
//  Created by Olga Pavluchenko on 18.08.22.
//

import Foundation

class TaskViewModel : Identifiable , ObservableObject {
    
    @Published var tasks : [Task] = [
        Task(taskName: "Publish An Article", description: "@Medium", date: Date(timeIntervalSinceReferenceDate:1619231231.0), priority: .normal),
        Task(taskName: "Buy Some Foods", description: "BBinstant", date: Date(timeIntervalSinceReferenceDate:1621231231.0), priority: .high),
        Task(taskName: "Launch the App", description: "App Store", date: Date(), priority: .medium),
        Task(taskName: "Walk Around", description: "Garden", date: Date(), priority: .normal)
    ]
    
    @Published var sortType : SortType = .alphabetical
    @Published var isPresented = false
    @Published var searched = ""
    
    func addTask(task : Task){
        tasks.append(task)
    }
    
    func removeTask(indexAt : IndexSet){
        tasks.remove(atOffsets: indexAt)
    }
    
    func sort(){
        
        switch sortType {
        case .alphabetical :
            tasks.sort(by: { $0.taskName < $1.taskName })
        case .date :
            tasks.sort(by: { $0.date > $1.date })
        case .priority :
            tasks.sort(by: { $0.priority.rawValue > $1.priority.rawValue })
        }
    }
    
}

