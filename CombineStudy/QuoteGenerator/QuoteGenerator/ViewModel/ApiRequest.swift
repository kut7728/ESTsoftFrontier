//
//  ApiRequest.swift
//  QuoteGenerator
//
//  Created by nelime on 3/4/25.
//

import Foundation
import Moya

enum ApiRequest {
    case getQuote
}

extension ApiRequest: TargetType {
    var baseURL: URL { URL(string: "https://korean-advice-open-api.vercel.app")! }

    var path: String {
        switch self {
            case .getQuote:
            return "/api/advice"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getQuote:
            return .get
        }
    }
    
    var task: Moya.Task {
        switch self {
        case .getQuote:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return ["Content-type": "application/json"]
    }
    
}
