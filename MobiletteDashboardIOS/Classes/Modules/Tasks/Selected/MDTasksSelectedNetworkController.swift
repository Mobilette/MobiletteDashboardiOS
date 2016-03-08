//
//  MDTasksSelectedNetworkController.swift
//  MobiletteDashboardIOS
//
//  Mobilette template version 1.0
//
//  Created by Benaly Issouf M'sa on 07/03/16.
//  Copyright © 2016 Mobilette. All rights reserved.
//

import Foundation
import PromiseKit
// import ObjectMapper

class MDTasksSelectedNetworkController: MDTasksSelectedNetworkProtocol
{
    // MARK: - Property
    
    // MARK: - Life cycle

    // MARK: - Network
    
    func fetchTaskTrelloSelected() -> Promise<[SelectedTaskJSONItem]>
    {
        return Promise<[SelectedTaskJSONItem]> { fullfil, reject in

        }
    }
    
    // MARK: - Error
    
    enum MDTasksSelectedNetworkControllerError
    {
        case Mapping(String)
        
        var code: Int {
            switch self {
            case .Mapping:
                return 500
            }
        }
        
        var domain: String {
            return "NetworkControllerDomain"
        }
        
        var description: String {
            switch self {
            case .Mapping:
                return "Mapping Error."
            }
        }
        
        var reason: String {
            switch self {
            case .Mapping(let JSONString):
                return "Response string can not be mapped to the object.\nString: \(JSONString)."
            }
        }
        
        var error: NSError {
            let userInfo = [
                NSLocalizedDescriptionKey: self.description,
                NSLocalizedFailureReasonErrorKey: self.reason
            ]
            return NSError(domain: self.domain, code: self.code, userInfo: userInfo)
        }
    }
}