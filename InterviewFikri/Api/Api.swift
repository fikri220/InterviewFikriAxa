//
//  Api.swift
//  InterviewFikri
//
//  Created by Fikri Ihsan on 05/03/24.
//

import Foundation
import Alamofire

class Api : NSObject {
    
    static func getUserList(callback:@escaping([UserData]?)->Void) {
        AF.request("https://jsonplaceholder.typicode.com/posts/", method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON(completionHandler: { response in
            
            do {
                let userDataList = try JSONDecoder().decode([FailableDecodable<UserData>].self, from: response.data!).compactMap{$0.base}
                callback(userDataList)
            }
            catch let error {
                
            }
            
        })
    }
    
}
