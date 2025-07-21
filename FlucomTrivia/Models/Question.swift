//
//  Question.swift
//  FlucomTrivia
//
//  Created by Tran Luan on 21/7/25.
//

struct Question: Decodable {
    let id: Int
    let question: String
    let answer: String
    let wrong: [String]
    let book: Int
    let hint: String
}
