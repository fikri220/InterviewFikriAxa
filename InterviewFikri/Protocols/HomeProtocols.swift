//
//  HomeProtocols.swift
//  InterviewFikri
//
//  Created by Fikri Ihsan on 05/03/24.
//

import Foundation

protocol HomeViewToViewModelProtocol : AnyObject {
    func startFetcDataList()
}

protocol HomeViewModelToViewProtocol : AnyObject {
    func onSuccess(userList : [UserData]?)
}
