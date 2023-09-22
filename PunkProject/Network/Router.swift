//
//  Router.swift
//  PunkProject
//
//  Created by Chaewon on 2023/09/22.
//

import Foundation
import Alamofire

enum Router: URLRequestConvertible {
    
    case all
    case single(id: String)
    case random
    
    private var baseURL: URL {
        return URL(string: "https://api.punkapi.com/v2/")!
    }
    
    private var path: String {
        switch self {
        case .all:
            return "beers"
        case .single(let id):
            return "beers/\(id)"
        case .random:
            return "beers/random"
        }
    }
    
    private var method: HTTPMethod {
        return .get
    }
    
    func asURLRequest() throws -> URLRequest {
        let url = baseURL.appendingPathComponent(path)
        var request = URLRequest(url: url)
        request.method = method
        return request
    }
    
}
