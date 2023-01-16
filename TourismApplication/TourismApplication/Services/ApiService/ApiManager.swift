//
//  ApiManager.swift
//  TourismApplication
//
//  Created by Samet Ronaer on 16.01.2023.
//

import Foundation

class ApiManager{
    let baseUrl : String = ApiConfigs.baseUrl
    static let shared : ApiManager = ApiManager()
    
   func sendGetRequest(endpoint : String?, completion: @escaping (ApiResult) -> ()){
       let url = URL(string: "\(baseUrl)\(endpoint!)")
        URLSession.shared.dataTask(with: url!){ (data, response, error) in
            if(data != nil){
              parseJson(data!)
                completion(SuccessResult(data: data))
            }else if(error != nil){
                "Error".log()
                completion(ErrorResult(errorCode: "Error appear"))
            }
            
        }.resume()
    }
}


func parseJson(_ passedData:Data)  {
    let decoder = JSONDecoder()
    do{
        let decodeData = try decoder.decode(UserModel.self, from: passedData)
        
        print(decodeData)
      
    }catch{
        print(error)
       print("Error appear")
    }
}
