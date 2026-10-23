//
//  User.swift
//  ThisWeek_Practice
//
//  Created by Admin on 10/22/26.
//

struct User {
    let id: Int
    var nickname: String
    var age: Int
    var gender: Gender
    var mbti: String
    var job: String
    var hobby: String
    var imagePath: String?
}

enum Gender: String, CaseIterable, Codable {
    case male = "MALE"
    case female = "FEMALE"
    
    var label: String {
        switch self {
        case .male: return "남자"
        case .female: return "여자"
        }
    }
}
