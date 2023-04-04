//
//  ProfileView.swift
//  SwiftUISideMenue
//
//  Created by MTPC-458 on 04/04/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            Color(.white)
            ScrollView {
                VStack {
                    Image("avtar")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .padding(.bottom, 16)
                    
                    Text("John Doe")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Software Engineer")
                        .font(.headline)
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget feugiat nisi. Praesent vitae sem hendrerit, rutrum ex id, luctus arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Integer maximus nunc risus, a accumsan enim aliquam vitae. Sed blandit dictum metus, eget varius sapien. In sed elit vel urna malesuada suscipit. Morbi sit amet sodales quam. Donec vel lorem massa.")
                        .font(.body)
                        .padding(.horizontal)
                    
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
