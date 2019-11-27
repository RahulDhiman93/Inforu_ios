//
//  TodaysFactPresenter.swift
//  Inforu
//
//  Created by Rahul Dhiman on 18/11/19.
//  Copyright © 2019 Deepak. All rights reserved.
//

import Foundation

protocol TodaysFactPresenterDelegate : class {
    func failure(message: String)
    func todaysFactSuccess()
}

class TodaysFactPresenter {
    
    var factModel : FactModel?
    
    weak var view  : TodaysFactPresenterDelegate?
    init(view: TodaysFactPresenterDelegate) {
        self.view = view
    }
    
    func getTodaysFact() {
        
        UserAPI.share.getTodaysFact(callback: { [weak self] response , error in
            
            guard let response = response, error == nil else {
                self?.view?.failure(message:  error?.localizedDescription ?? "Server Error, Please try again!")
                return
            }
            
            self?.factModel = FactModel(json: response)
            self?.view?.todaysFactSuccess()
        })
    }
    
}