//
//  Home.swift
//  TaskManagementApp
//
//  Created by 김보영 on 2022/07/01.
//

import SwiftUI

struct Home: View {
    
    @StateObject var taskModel: TaskViewModel = TaskViewModel()
    @Namespace var animation
    
    var body: some View {
        
        ScrollView (.vertical, showsIndicators: false) {
            // Mark : Lazy Stack With Pinned Header
            LazyVStack(spacing: 14, pinnedViews: .sectionHeaders) {
                
                Section {
                    
                    // MARK: Current Week View
                    ScrollView(.horizontal, showsIndicators: false){
                        
                        HStack(spacing: 10){
                            ForEach(taskModel.currentWeek, id:\.self) { day in
                                
                                VStack(spacing: 10) {
                                    
                                    Text(taskModel.extractDate(date: day, format: "dd"))
                                        .font(.system(size:16))
                                        .fontWeight(.semibold)
                                    
                                    // EEE will return day as MON, TUE... etc
                                    Text(taskModel.extractDate(date: day, format: "EEE"))
                                        .font(.system(size:14))
                                    
                                    Circle()
                                        .fill(.white)
                                        .frame(width: 8, height: 8)
                                        .opacity(taskModel.isToday(date: day) ? 1 : 0)
                                    
                                }
                                // MARK: Foreground Style
                                .foregroundStyle(taskModel.isToday(date: day) ? .primary : .secondary)
                                .foregroundColor(taskModel.isToday(date: day) ? .white : .black)
                                // MARK: Capsule Shape
                                .frame(width: 48, height: 92)
                                .background(
                                    ZStack {
                                        // MARK: Matched Geometry Effect
                                        if taskModel.isToday(date: day){
                                            Capsule()
                                                .fill(.black)
                                                .matchedGeometryEffect(id: "CURRENTDAY", in: animation)
                                        }
                                    }
                                )
                                .contentShape(Capsule())
                                .onTapGesture {
                                    // Updating Current Day
                                    withAnimation {
                                        taskModel.currentDay = day
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    TasksView()
                    
                } header: {
                    HeaderView()
                }
            } // LazyVStack
        } // ScrollView
        .ignoresSafeArea(.container, edges: .top)
        
    } // body
    
    // MARK: Task View
    func TasksView() -> some View {
        LazyVStack(spacing: 18){
            if let tasks = taskModel.filteredTasks {
                
                if tasks.isEmpty {
                    Text("No tasks found")
                        .font(.system(size: 16))
                        .fontWeight(.light)
                        .offset(y:108)
                } else {
                    ForEach(tasks) { task in
                        TaskCardView(task: task)
                    }
                }
                
            } else {
                // MARK: Progress View
                ProgressView()
                    .offset(y: 108)
            }
        }
        .padding()
        .padding(.top)
        // MARK: Updating Tasks
        .onChange(of: taskModel.currentDay) { newValue in
            taskModel.filterTodayTasks()
        }
    }
    
    // MARK: Task Card View
    func TaskCardView(task: Task) -> some View {
        
        HStack(alignment: .top, spacing: 32) {
            
            VStack(spacing: 10) {
                
                Circle()
                    .fill(taskModel.isCurrentHour(date: task.taskDate) ? .black : .clear)
                    .frame(width: 16, height: 16)
                    .background(
                        Circle()
                            .stroke(.black, lineWidth: 1)
                            .padding(-3)
                    )
                    .scaleEffect(!taskModel.isCurrentHour(date: task.taskDate) ? 0.8 : 1)
                Rectangle()
                    .fill(.black)
                    .frame(width: 3)
                
                VStack {
                    HStack(alignment: .top, spacing: 10) {
                        VStack(alignment: .leading, spacing: 12) {
                            Text(task.taskTitle)
                                .font(.title2.bold())
                            Text(task.taskDescription)
                                .font(.callout)
                                .foregroundStyle(.secondary)
                        }
                        .hLeading()
                        
                        Text(task.taskDate.formatted(date: .omitted, time: .shortened))
                        
                        if taskModel.isCurrentHour(date: task.taskDate) {
                            // MARK: Team Members
                            HStack(spacing: 0) {
                                
                                HStack(spacing: -10){
                                    ForEach(["User1", "User2", "User3"], id: \.self){ user in
                                        Image(user)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 44, height: 44)
                                            .clipShape(Circle())
                                            .background(
                                            Circle()
                                                .stroke(.black, lineWidth: 4)
                                            )
                                    }
                                }
                                .hLeading()
                                
                                // MARK: Check Button
                                Button {
                                    
                                } label: {
                                    Image(systemName: "checkmark")
                                        .foregroundColor(.black)
                                        .padding(8)
                                        .background(Color.white, in: RoundedRectangle(cornerRadius: 8))
                                }
                            }
                            .padding(.top)
                        }
                    }
                }
                .foregroundColor(taskModel.isCurrentHour(date: task.taskDate) ? .white : .black)
                .padding(taskModel.isCurrentHour(date: task.taskDate) ? 15 : 0)
                .padding(.bottom, taskModel.isCurrentHour(date: task.taskDate) ? 0 : 1 )
                .hLeading()
                .background(
                    Color("Black")
                        .cornerRadius(18)
                        .opacity(taskModel.isCurrentHour(date: task.taskDate) ? 1 : 0))
            }
        }
        .hLeading()
    }
    
    // MARK: Header
    func HeaderView() -> some View {
        
        HStack(spacing: 10) {
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text(Date().formatted(date: .abbreviated, time: .omitted))
                    .foregroundColor(.gray)
                
                Text("Today")
                    .font(.largeTitle.bold())
            } // VStack
            .hLeading()
            
            Button {
                
            } label: {
                Image("photo_aquarium")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }
            
        } // HStack
        .padding()
        .padding(.top, getSafeArea().top)
        .background(Color.white)
    } // func HeaderView
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        
        Home()
        
    }
}

// MARK: UI Design Helper functions
extension View {
    
    func hLeading() -> some View {
        self
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    func hTrailing() -> some View {
        self
            .frame(maxWidth: .infinity, alignment: .trailing)
    }
    
    func hCenter() -> some View {
        self
            .frame(maxWidth: .infinity, alignment: .center)
    }
    
    //MARK: Safe Area
    func getSafeArea() -> UIEdgeInsets {
        
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .zero
        }
        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        
        return safeArea
        
    }
}
