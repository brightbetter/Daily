//
//  BVHomeModel.swift
//  Daily
//
//  Created by Bright on 2020/3/26.
//  Copyright © 2020 Bright. All rights reserved.
//

import Foundation
import HandyJSON

struct BWCibaModel: HandyJSON {
    var date: String?
    var ciba: String?
    var ciba_en: String?
    var imgurl: String?
    
    mutating func mapping(mapper: HelpingMapper) {
        mapper.specify(property: &ciba_en, name: "ciba-en")
    }
}
