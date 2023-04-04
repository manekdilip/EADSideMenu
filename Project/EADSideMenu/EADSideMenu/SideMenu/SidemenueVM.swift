//
//  SidemenueVM.swift
//  SwiftUISideMenue
//
//  Created by MTPC-458 on 31/03/23.
//

import Foundation
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
