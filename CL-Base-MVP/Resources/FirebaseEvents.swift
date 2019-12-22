//
//  FirebaseEvents.swift
//  Inforu
//
//  Created by Rahul Dhiman on 22/12/19.
//  Copyright © 2019 Deepak. All rights reserved.
//

import UIKit
import FirebaseAnalytics

class FirebaseEvents: NSObject {

    class func signupEvent() {
        Analytics.logEvent(AnalyticsEventSignUp, parameters: [
            AnalyticsParameterMethod: method
        ])
    }
    
    class func loginEvent() {
        Analytics.logEvent(AnalyticsEventLogin, parameters: [
            AnalyticsParameterMethod: method
        ])
    }
    
    class func shareEvent(sharedOn : String, sharedFact : String) {
        Analytics.logEvent(AnalyticsEventShare, parameters: [
            AnalyticsParameterMedium : sharedOn,
            AnalyticsParameterContent : sharedFact
        ])
    }
    
    class func searchEvent(searchTerm : String) {
        Analytics.logEvent(AnalyticsEventSearch, parameters: [
            AnalyticsParameterSearchTerm: searchTerm
        ])
    }
    
}
