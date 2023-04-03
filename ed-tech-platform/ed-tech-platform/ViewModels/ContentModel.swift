//
//  ContentModel.swift
//  ed-tech-platform
//
//  Created by Jackson Wiese on 3/24/23.
//


//@EnvironmentObject only viewable by all pages within project
//@Published available to viewers inside the file and external viewers

import Foundation

//this class is public and available everywhere
class ContentModel:ObservableObject {
    @Published var modules = [Module]() //here we are creating an instance --> needs the ()
    
    //stands for initalization: this code immediately starts when the UI starts (first thing to run)
    init(){
    //get local json data
        getLocalData()
    }//end of init
    
    
    //Function getLocalData() defined here
    func getLocalData(){
        //GOAL OF THIS SECTION: get URL for .json file (aka all of our data)
        //let makes a variable a constant
        //forResource: data is the name of the .json file
        //withExtention: the name of the file
        //get url of the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        //read that file into data objects we're creating
        //DoWhile loop & doCatch statement
        
        do{
            //trying to pull the json data, if there's an error, the program will run the catch statement
            let jsonData = try Data(contentsOf:  jsonUrl!)
            // "!" on the end of jsonUrl which makes the computer run the code anyways
            
            //decode content using a Swift decoder
            let jsonDecoder = JSONDecoder() //JSONDecoder is an instance
            //now running decoder on it
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            //assign modules to modules property
            self.modules = modules
            
        }//end of do
        catch{
            print("json parse failed")
        }//end of do catch
        
        
    }//end of getLocalData
    
}
