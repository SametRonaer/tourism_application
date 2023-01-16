//
//  ApiAuthParts.swift
//  TourismApplication
//
//  Created by Samet Ronaer on 16.01.2023.
//

import Foundation

extension ApiManager{
    
    func sendSignInRequest(email : String, password : String, completion: @escaping (ApiResult) -> ()){
        self.sendGetRequest(endpoint: ApiConfigs.signInEndpoint, completion: completion)
    }
    
}
