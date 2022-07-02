//
//  Task.swift
//  TaskManagementApp
//
//  Created by 김보영 on 2022/07/01.
//

import SwiftUI

// Task Model
struct Task: Identifiable {
    var id = UUID().uuidString
    var taskTitle: String
    var taskDescription: String
    var taskDate: Date
}
