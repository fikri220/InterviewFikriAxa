//
//  UserResultData.swift
//  InterviewFikri
//
//  Created by Fikri Ihsan on 05/03/24.
//

import Foundation

struct UserData : Codable {
    let userId : Int?
    let id : Int?
    let title : String?
    let body : String?
    
    

    enum CodingKeys: String, CodingKey {

        case userId = "userId"
        case id = "id"
        case title = "title"
        case body = "body"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        userId = try values.decodeIfPresent(Int.self, forKey: .userId)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        body = try values.decodeIfPresent(String.self, forKey: .body)
    }

}


struct FailableDecodable<Base : Decodable> : Decodable {

    let base: Base?

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.base = try? container.decode(Base.self)
    }
}

struct UserModel : Codable{
    let data : UserData?

    init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        data = try container.decodeIfPresent(UserData.self)
    }
    
}

