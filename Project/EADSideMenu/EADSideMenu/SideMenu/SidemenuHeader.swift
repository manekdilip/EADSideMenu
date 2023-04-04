//
//  SidemenueHeader.swift
//  SwiftUISideMenue
//
//  Created by MTPC-458 on 31/03/23.
//

import SwiftUI

struct SideMenuHeader: View {
    @Binding var isShowing : Bool
    var body: some View {
        ZStack (alignment: .topTrailing){
            Button(action: {
                withAnimation (.spring()){
                    isShowing.toggle()
                }
            }) {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 22)
                    .foregroundColor(.white)
                    .padding()
            }
            VStack (alignment: .leading) {
                Image("avtar")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64,height: 64)
                    . clipShape(Circle())
                    .padding(.bottom, 16)
                Text("User Name")
                    .font(.system(size: 24,weight: .semibold))
                Text("designation")
                    .font(.system(size: 14))
                HStack{
                    HStack(spacing: 4) {
                        Text("2").bold()
                        Text("achievements")
                    }
                    Spacer()
                }
            }.padding()
                .foregroundColor(.white)
        }
    }
}

struct SideMenuHeader_Previews: PreviewProvider {
    @State static var isShow = true
    static var previews: some View {
        SideMenuHeader(isShowing: $isShow)
    }
}
