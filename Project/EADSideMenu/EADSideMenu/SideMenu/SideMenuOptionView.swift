//
//  SideMenuOptionView.swift
//  SwiftUISideMenue
//
//  Created by MTPC-458 on 31/03/23.
//

import SwiftUI

struct SideMenuOptionView: View {
    let option: SideMenuViewModel
    let isSelected: Bool
    var body: some View {
        HStack(spacing: 16){
            Image(systemName: option.imageName)
                .frame(width: 24,height: 24)
            Text(option.title)
                .font(.system(size: 15,weight: .semibold))
            Spacer()
        }.padding()
            .foregroundColor(isSelected ? .black : .white)
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(option: .profile, isSelected: true)
    }
}
