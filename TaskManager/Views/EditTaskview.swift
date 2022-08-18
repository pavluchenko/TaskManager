//
//  EditTaskview.swift
//  TaskManager
//
//  Created by Olga Pavluchenko on 18.08.22.
//

import Foundation
import SwiftUI

struct EditTaskView: View {
    @ObservedObject var taskVM : TaskViewModel
    
    var body: some View {
        NavigationView{
            Form{}
        }
    }
}
