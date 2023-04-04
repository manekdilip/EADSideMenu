//
//  SideMenuView.swift
//  SwiftUISideMenue
//
//  Created by MTPC-458 on 31/03/23.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing : Bool
    @Binding var selectedScreen: SideMenuViewModel
    var body: some View {
        ZStack {
            LinearGradient(colors: [.cyan,.yellow], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                SideMenuHeader(isShowing: $isShowing)
                ForEach(SideMenuViewModel.allCases, id:\.self) { option in
                    SideMenuOptionView(option: option, isSelected: option == selectedScreen)
                        .onTapGesture {
                            withAnimation (.spring()){
                                isShowing.toggle()
                                selectedScreen = option
                            }
                        }
                }
                Spacer()
            }
        }.navigationBarHidden(true)
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    @State static var isShow = true
    @State static var option = SideMenuViewModel.home
    static var previews: some View {
        SideMenuView(isShowing: $isShow, selectedScreen: $option)
    }
}
