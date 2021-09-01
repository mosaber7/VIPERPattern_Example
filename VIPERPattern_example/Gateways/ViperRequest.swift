//
//  ViperRequest.swift
//  VIPERPattern_example
//
//  Created by Saber on 01/09/2021.
//

import Foundation
import Alamofire

class ViperRequest{
    
    func retrieveAllResponces( _ completionHandler: @escaping (Result<Model, AFError>)-> Void)  {
        let route = ViperRouter.allResponces
        
        AF.request(route).responseDecodable { (responce: DataResponse<Model, AFError>) in
            switch responce.result{
            
            case .success(let value):
                completionHandler(.success(value))
            case .failure(let error):
                completionHandler(.failure(error))
            }
        }
        }
  
}

//  let request = ViperRequest()
// request.retrieveAllResponces()
