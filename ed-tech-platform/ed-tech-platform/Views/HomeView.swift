//
//  HomeView.swift
//  ed-tech-platform
//
//  Created by Jackson Wiese on 3/24/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var model:ContentModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
