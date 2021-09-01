//
//  ViperRouter.swift
//  VIPERPattern_example
//
//  Created by Saber on 01/09/2021.
//

import Foundation
import Alamofire


enum ViperRouter: URLRequestConvertible{
    static let baseURL = "https"
    case allResponces
    var httpMethod: HTTPMethod?{
        switch self {
        case .allResponces:
            return .get
        }
    }
    
    var path: String{
        switch self {
        case .allResponces:
            return""
            
        }
        }
    var parameters: [String: Any]?{
        switch self {
        case .allResponces:
            return nil
        }
      
    }
    var headers: [String: String]{
        switch self {
        case .allResponces:
            return [:]
        }
    }
    var encoding: ParameterEncoding{
        switch self {
        case .allResponces:
            return JSONEncoding.default
        }
    }
    
    
    
    func asURLRequest() throws -> URLRequest {
        let urlString = ViperRouter.baseURL + self.path
        let url = URL(string: urlString)!
        var request = URLRequest(url: url)
        request.method = self.httpMethod
        request.headers = HTTPHeaders(headers)
        
        return try! encoding.encode(request, with: self.parameters)
    }
    
    
}
