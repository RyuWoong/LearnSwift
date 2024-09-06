//
//  ToodoListView.swift
//  voiceMemo
//

import SwiftUI

struct TodoListView: View {
    @EnvironmentObject private var PathModel: PathModel
    @EnvironmentObject private var todoListViewModel : TodoListViewModel
    
    var body: some View {
        ZStack {
            // 투두 셀 리스트
            VStack {
                if !todoListViewModel.todos.isEmpty {
                    CustomNavigationBar(
                        isDisplayLeftBtn: false,
                        rightBtnAction: {
                            todoListViewModel.navigationRightBtnTapped()
                        },
                        rightBtnType: todoListViewModel.navigationBarRightBtnMode
                    )
                } else {
                    Spacer().frame(height: 30)
                }
                
                TitleView()
                AnnouncementView()
            }
        }
    }
}

// MARK: - TodoList 타이틀 뷰
private struct TitleView : View {
    @EnvironmentObject private var todoListViewModel : TodoListViewModel
    
    fileprivate var body: some View{
        HStack {
            if todoListViewModel.todos.isEmpty {
                Text("Todo list를\n추가해 보세요.")
            } else {
                Text("To Do List \(todoListViewModel.todos.count)개가\n있습니다.")
            }
            
            Spacer()
            
        }
        .font(.system(size: 30,weight: .bold)).padding(.leading,20)
    }
}

// MARK: -TODOList 안내뷰
private struct AnnouncementView: View {
    fileprivate var body: some View {
        VStack(spacing:15) {
            Spacer()
            
            Image("pencil").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            Text("\"매일 아침 5시 운동하자!\"")
            Text("\"내일 8시 수강 신청 하자!\"")
            Text("\"1시 반 점심약속 리망니드 해보자!\"")
            
            Spacer()
            
        }
        .font(.system(size: 16))
        .foregroundColor(.customGray2)
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView().environmentObject(PathModel()).environmentObject(TodoListViewModel())
    }
}
