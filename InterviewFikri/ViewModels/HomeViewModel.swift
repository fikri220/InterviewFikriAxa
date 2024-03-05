//
//  HomeViewModel.swift
//  InterviewFikri
//
//  Created by Fikri Ihsan on 05/03/24.
//

import Foundation

class HomeViewModel : HomeViewToViewModelProtocol {
    var viewController : HomeViewController?
    
    func startFetcDataList() {
        Api.getUserList(callback: { result in
            self.viewController?.onSuccess(userList: result)
        })
    }
    
    
}
