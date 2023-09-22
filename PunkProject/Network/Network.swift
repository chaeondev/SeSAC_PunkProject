//
//  Network.swift
//  PunkProject
//
//  Created by Chaewon on 2023/09/22.
//

import Foundation
import Alamofire

class Network {
    
    static let shared = Network()
    
    private init() { }
    
    func request<T: Decodable>(api: Router, completion: @escaping (Result<T, Error>) -> Void) {
        AF.request(api).responseDecodable(of: T.self) { response in
            switch response.result {
            case .success(let data):
                completion(.success(data))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
