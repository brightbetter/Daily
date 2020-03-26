//
//  BWCibaView.swift
//  Daily
//
//  Created by Bright on 2020/3/26.
//  Copyright © 2020 Bright. All rights reserved.
//

import UIKit
import Kingfisher
import SnapKit

class BWCibaView: UIView {
//    private lazy var imageView : UIImageView = {
//        let imageView = UIImageView()
//        return imageView
//    }()
    
    private lazy var cnLabel : UILabel = {
        let label = UILabel()
        label.textColor = .bw_titleColor()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var enLabel : UILabel = {
        let label = UILabel()
        label.textColor = .bw_titleColor()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var dateLabel : UILabel = {
        let label = UILabel()
        label.textColor = .bw_titleColor()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .right
        return label
    }()
    
    var model:BWCibaModel? {
        didSet {
            self.cnLabel.text = model?.ciba
            self.enLabel.text = model?.ciba_en
            self.dateLabel.text = model?.date
//            self.imageView.kf.setImage(with: URL(string: (model?.imgurl!)!))
        }
    }
    
    // MARK: 自定义构造函数
    override init(frame: CGRect) {
        super.init(frame: frame)
//        self.addSubview(self.imageView)
//        self.imageView.snp.makeConstraints { (make) in
////            make.leading.equalTo(self).offset(10)
////            make.trailing.equalTo(self).offset(-10)
//            make.top.centerX.equalToSuperview()
//        }
        self.backgroundColor = .bw_mainColor()
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        self.addSubview(self.cnLabel)
        self.cnLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(self).offset(10)
            make.trailing.equalTo(self).offset(-10)
            make.top.equalTo(self).offset(10)
        }
        
        self.addSubview(self.enLabel)
        self.enLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(self).offset(10)
            make.trailing.equalTo(self).offset(-10)
            make.top.equalTo(self.cnLabel.snp.bottom).offset(10)
        }
        
        self.addSubview(self.dateLabel)
        self.dateLabel.snp.makeConstraints { (make) in
            make.trailing.equalTo(self).offset(-10)
            make.top.equalTo(self.enLabel.snp.bottom).offset(10)
            make.bottom.equalTo(self).offset(-10)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
