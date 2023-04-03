//
//  HomeViewRow.swift
//  ed-tech-platform
//
//  Created by Jackson Wiese on 3/24/23.
//

import SwiftUI

struct HomeViewRow: View {
    
    //declaration of string inputs to homeviewrow
    var image: String
    var title: String
    var description: String
    var count: String
    var time: String
    
    
    var body: some View {
        
        ZStack{ //for rectangular box
            Rectangle() //for overall box for the video
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
            
            HStack{ //Contents in each card
                //image
             
                Image(image) //this pulls the image from the database, which will pull the correct photo
                    .resizable()
                    .frame(width: 116, height:116) //these dimensions should come from Figma
                    .clipShape(Circle()) //make the dude look more like a profile picture (USE THIS for profile pictures)
                
                Spacer()
                
                //Text
                VStack(alignment:.leading, spacing: 10){ //this extra part here makes the vstack look good from a spacing standpoint
                    //headline
                    //Now we're passing a string that will put the text in it
                    Text(title)
                        .bold()
                    
                    
                    //description
                    Text(description) //pulls it from the .json file
                        .padding(.bottom, 20)
                    
                    HStack{
                    //icons
                        //icons (pulling from Apple's icon library)
                        //Number of lessons
                        Image(systemName: "text.book.closed")
                            .resizable()
                            .frame(width: 15, height:15)
                        Text(count) //this coiunts the number of lessons in the file by counting them and inserting that number
                            .font(.caption)
                        
                        Spacer()
                        
                        //Duration
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 15, height:15)
                        
                        //time
                        Text(time)
                            .font(.caption)
                    }
                }//end of VStack
                .padding(.leading, 20)
                
                //text
                
            }//end of HStack
            .padding(.horizontal, 20)
        }//end of zstack
        
    }
}
