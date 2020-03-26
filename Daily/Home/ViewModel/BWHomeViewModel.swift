//
//  BWHomeViewModel.swift
//  Daily
//
//  Created by Bright on 2020/3/26.
//  Copyright © 2020 Bright. All rights reserved.
//

import UIKit
import SwiftyJSON
import HandyJSON

class BWHomeViewModel: NSObject {
    var cibaModel:BWCibaModel?
}

extension BWHomeViewModel {
    func requestData(finishCallback: @escaping () -> ()) {
        // 创建 Group
        let dispatchGroup = DispatchGroup()
        //1. 请求第一部分每日一句数据
        // 进入 DispatchGroup 组
        dispatchGroup.enter()
        // 首页推荐接口请求
        BWHomeProvider.request(.cibaSentence) { result in
            if case let .success(response) = result {
                //解析数据
                let data = try? response.mapJSON()
                let json = JSON(data!)
                if let mappedObject = BWCibaModel.deserialize(from: json.dictionaryValue) { // 从字符串转换为对象实例
                    print(mappedObject)
                    self.cibaModel = mappedObject
                }
            }
            dispatchGroup.leave()
        }
        
        //所有数据都请求到
        dispatchGroup.notify(queue: .main) {
            print("所有的数据都请求到")
            finishCallback()
        }
    }
}
