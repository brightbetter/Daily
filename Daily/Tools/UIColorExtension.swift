//
//  UIColorExtension.swift
//  Daily
//
//  Created by Bright on 2020/3/26.
//  Copyright © 2020 Bright. All rights reserved.
//

import UIKit

extension UIColor {
    //
    class func bw_backColor() ->UIColor {
        return self.bw_hexColor(rgb: 0x171b29)
    }
    
    class func bw_mainColor() ->UIColor {
        return self.bw_hexColor(rgb: 0x272D45)
    }
    
    class func bw_titleColor() ->UIColor {
        return self.bw_hexColor(rgb: 0xF3F3F3)
    }
    
    class func bw_desColor() ->UIColor {
        return self.bw_hexColor(rgb: 0xD5D6D9)
    }
    
    //16进制转rgba(透明度自己定)
    class func bw_hexColor(rgb:Int, alpha: CGFloat) ->UIColor {
        return UIColor(red: ((CGFloat)((rgb & 0xFF0000) >> 16))/255.0,
            green: ((CGFloat)((rgb & 0xFF00) >> 8))/255.0,
            blue: ((CGFloat)(rgb & 0xFF))/255.0,
            alpha: alpha)
    }
    //16进制转rgb（透明度数值为固定值1.0）
    class func bw_hexColor(rgb:Int) -> UIColor {
        return UIColor(red: ((CGFloat)((rgb & 0xFF0000) >> 16))/255.0,
            green: ((CGFloat)((rgb & 0xFF00) >> 8))/255.0,
            blue: ((CGFloat)(rgb & 0xFF))/255.0,
            alpha: 1.0)
    }
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
    }
    
}
