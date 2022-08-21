//
//  Person.swift
//  TabBarApp
//
//  Created by 19543442 on 18.08.2022.
//

struct Person {
    let userName: String
    let userSurname: String
    let userGender: GenderType
    let userAge: Int
    let userProfession: Profession
    let image: String
}

struct UserLogin {
    let user: String
    let password: String
}

enum GenderType {
    case women
    case man
    case none
}

enum Profession {
    case manager
    case banker
    case hr
    case programmer
}

