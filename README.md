# EADSideMenu
Side or hamburger menu using SwiftUI.
EADSideMenu written in SwiftUI and easy to use in project.
![BackgroundImage](https://github.com/manekdilip/EADSideMenu/blob/master/Images/EADSideMenu.gif)

#Installation

### Manually

Clone or Download this Repo. Then simply drag the folder ```SideMenu``` to your Xcode project.

###Simply way to integrate ```EADSideMenu```

###Add Side Menu Options ```SideMenuViewModel```

```
enum SideMenuViewModel: Int, CaseIterable {
    case home
    case profile
    case list
    case bookmark
    case message
    case notification
    case logout
    
    var title : String {
        switch self {
        case .home :return "home".capitalized
        case .profile : return "profile".capitalized
        case .list : return "list".capitalized
        case .bookmark : return "bookmark".capitalized
        case .message : return "message".capitalized
        case .notification : return "notification".capitalized
        case .logout : return "logout".capitalized
        }
    }
    var imageName : String {
        switch self {
        case .home: return "house"
        case .profile : return "person"
        case .list : return "list.star"
        case .bookmark : return "bookmark"
        case .message : return "message"
        case .notification : return "bell"
        case .logout : return "rectangle.portrait.and.arrow.right"
        }
    }
}
```
###Add Side menu state variables 
    ```
    @State private var isShowing = false
    @State private var selectedScreen: SideMenuViewModel = .home
    ```
###Create your NavigationView
```
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
```
