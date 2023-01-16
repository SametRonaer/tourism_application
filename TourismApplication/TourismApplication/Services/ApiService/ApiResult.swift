//
//  ApiResult.swift
//  TourismApplication
//
//  Created by Samet Ronaer on 16.01.2023.
//

import Foundation

protocol ApiResult{
    
}

class ErrorResult : ApiResult{
    let errorCode : String
    
    init(errorCode: String) {
        self.errorCode = errorCode
    }
}

class SuccessResult : ApiResult{
    let data : Any
    
    init(data: Any) {
        self.data = data
    }
}
