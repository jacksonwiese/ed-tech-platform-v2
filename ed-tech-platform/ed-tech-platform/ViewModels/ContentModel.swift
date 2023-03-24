//
//  ContentModel.swift
//  ed-tech-platform
//
//  Created by Jackson Wiese on 3/24/23.
//

import Foundation

class ContentModel:ObservableObject {
    @Published var modules = [Module]()
    
    //this is what the computer will first runs when it initalizes
    init(){
        //following function defined below
        getLocalData()
    }
    
    //the following fucntion pulls the data from the JSON file (or from core data)
    func getLocalData(){
        
        //find the URL for the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        //do/catch statement to try and avoid any erros
        do {
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            //decode jsonData into Module array
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            //assigns modules to modules property
            self.modules = modules
            
        } catch {
            print("json parse failed :(") //frowmy face added for extra sadness
        }
}
