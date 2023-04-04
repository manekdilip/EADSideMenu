//
//  ContentView.swift
//  SwiftUISideMenue
//
//  Created by MTPC-458 on 31/03/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowing = false
    @State private var selectedScreen: SideMenuViewModel = .home
    var body: some View {
        NavigationView {
            ZStack {
                    if isShowing {
                        SideMenuView(isShowing: $isShowing, selectedScreen: $selectedScreen)
                    }
                switch selectedScreen {
                case .home:
                    HomeView()
                        .modifier( SideMenuViewModifier(option: $selectedScreen, isShowing: $isShowing))
                case .profile:
                    ProfileView()
                        .modifier( SideMenuViewModifier(option: $selectedScreen, isShowing: $isShowing))
                case .list:
                    ListView()
                        .modifier( SideMenuViewModifier(option: $selectedScreen, isShowing: $isShowing))
                case .bookmark:
                    BookMarkView()
                        .modifier( SideMenuViewModifier(option: $selectedScreen, isShowing: $isShowing))
                case .message:
                    MessageView()
                        .modifier( SideMenuViewModifier(option: $selectedScreen, isShowing: $isShowing))
                case .notification:
                    NotificationView()
                        .modifier( SideMenuViewModifier(option: $selectedScreen, isShowing: $isShowing))
                case .logout:
                    LogOutView()
                        .modifier( SideMenuViewModifier(option: $selectedScreen, isShowing: $isShowing))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack{
            Color(.white)
            Text("Home View")
                .padding()
        }
        
    }
}
struct SideMenuViewModifier: ViewModifier {
    @Binding var option: SideMenuViewModel
    @Binding var isShowing: Bool
    func body(content: Content) -> some View {
        content
            .cornerRadius(isShowing ? 20 : 10)
            .offset(x: isShowing ? 200 : 0, y : isShowing ? 44 : 0)
            .scaleEffect(isShowing ? 0.8 : 1).navigationBarItems(leading:
            Button(action: {
                withAnimation (.spring()){
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "list.bullet")
                    .foregroundColor(.black)
            })
            )
            .navigationTitle(option.title)
    }
}
