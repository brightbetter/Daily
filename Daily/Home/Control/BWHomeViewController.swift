//
//  BWHomeViewController.swift
//  Daily
//
//  Created by Bright on 2020/3/25.
//  Copyright © 2020 Bright. All rights reserved.
//

import UIKit
import SnapKit

class BWHomeViewController: BWBaseViewController {

    lazy var viewModel: BWHomeViewModel = {
        return BWHomeViewModel()
    }()
    
    lazy var cibaView: BWCibaView = {
        return BWCibaView()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupUI()
        viewModel.requestData {
            self.setupData()
        }
    }
}

// MARK: 请求数据
extension BWHomeViewController {
    fileprivate func setupData() {
        self.cibaView.model = self.viewModel.cibaModel
    }
}

// MARK: 初始化UI
extension BWHomeViewController {
    fileprivate func setupUI() {
        self.view.backgroundColor = .bw_backColor()
        self.view.addSubview(cibaView)
        cibaView.snp.makeConstraints { (make) in
            make.leading.equalTo(self.view).offset(10)
            make.trailing.equalTo(self.view).offset(-10)
            if #available(iOS 11.0, *) {
                make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(10)
            } else {
                make.top.equalTo(self.topLayoutGuide.snp.top)
            }
        }
    }
}
