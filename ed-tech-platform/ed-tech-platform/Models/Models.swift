//
//  Models.swift
//  ed-tech-platform
//
//  Created by Jackson Wiese on 4/3/23.
//

import Foundation

//the structures are the buiilding blocks for different types of data types
struct Module: Decodable, Identifiable{
    var id: Int
    var category: String //fix capital C to small c
    var content: Content //when adding multiple videos, this needs brackets around "Content" to make it an array
    var quiz: Quiz //when add multiple quizzes, this needs brackets around "Quiz" to make it an array
    
}

struct Content: Decodable, Identifiable{
    var id: Int
    var image: String //interesting that this data type is a string --> ig Image("name") is the String
    var time: String
    var description: String
    var lessons: [Lesson]
}

struct Lesson: Decodable, Identifiable{
    var id: Int
    var title: String
    var video: String
    var duration: String
    var explanation: String
}

struct Quiz: Decodable, Identifiable{
    var id:Int
    var image: String
    var time: String
    var description: String
    var questions: [Question]
}

struct Question: Decodable, Identifiable{
    var id: Int
    var content: String
    var correctIndex: Int
    var answers: [String]
}

