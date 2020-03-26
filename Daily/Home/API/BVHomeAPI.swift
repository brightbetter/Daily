//
//  File.swift
//  Daily
//
//  Created by Bright on 2020/3/26.
//  Copyright © 2020 Bright. All rights reserved.
//

import Foundation
import Moya

/// 首页推荐主接口
let BWHomeProvider = MoyaProvider<BWHomeAPI>()


enum BWHomeAPI {
    // 每日一句
    case cibaSentence
}

extension BWHomeAPI: TargetType {
    // 服务器地址
    public var baseURL: URL {
        switch self {
        case .cibaSentence:
            return URL(string: "https://api.ooopn.com/ciba/api.php")!
        default:
            return URL(string: "http://mobile.ximalaya.com")!
        }
        
    }
    
    var path: String {
        switch self {
        case .cibaSentence: return "/discovery-firstpage/v2/explore/ts-1532411485052"
        }
    }
    
    var method: Moya.Method { return .get }
    var task: Task {
        var parmeters:[String:Any] = [:]
        switch self {
        case .cibaSentence:
            parmeters = [
                "type":"json"
            ]
        }
        return .requestParameters(parameters: parmeters, encoding: URLEncoding.default)
    }
    
    var sampleData: Data { return "".data(using: String.Encoding.utf8)! }
    var headers: [String : String]? { return nil }
}
