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
        
        ScrollView{
            
            LazyVStack{ //saves memory for "infinite" scoll like Insta
                
                //creating a template for each card that we can paste into later
                //Learning card
                //ZStack{ //for rectangular box
                ForEach(model.modules){module in
                  //learning card
                    HomeViewRow(image: module.content.image, title: "Learn \(module.category)", description: module.content.description, count: "\(module.content.lessons.count) Lessons", time: module.content.time)
                    
                 //quiz card
                    HomeViewRow(image: module.quiz.image, title: "\(module.category) Test", description: module.quiz
                        .description, count: "\(module.quiz.questions.count) questions", time: module.quiz.time)
                    
                    
                    
                }//end of foreach
                
            }//end of Lazy Vstack
            .padding()
            
        }//end of scroll view
        
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
