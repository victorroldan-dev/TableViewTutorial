//
//  UserModel.swift
//  TableViewTutorial
//
//  Created by Victor Roldan on 28/08/21.
//

import Foundation

struct UserModel {
    let profilePic : String
    let userName : String
    let description : String

    static func getList() -> [UserModel]{
        let list = [
            UserModel(profilePic: "isaac-hunt", userName: "Isaac Hunt", description: "iOS Developer at Google"),
            UserModel(profilePic: "hyon-suk", userName: "Hu Hyon-Suk", description: "Project Manager at Faebook"),
            UserModel(profilePic: "wen-yahui", userName: "Wen Yahui", description: "iOS Developer at Amazon"),
            UserModel(profilePic: "john-doe", userName: "John Doe", description: "Android Developer at Amazon"),
            UserModel(profilePic: "mike-swift", userName: "Mike Swift", description: "Reac Native Developer at Instagram"),
        ]
        return (list+list+list+list+list)
    }
}
