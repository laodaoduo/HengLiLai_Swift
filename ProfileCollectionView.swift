//
//  ProfileCollectionView.swift
//  HengLiLai_Swift
//
//  Created by Lwj on 2017/7/26.
//  Copyright © 2017年 LWJ. All rights reserved.
//

import UIKit

class ProfileCollectionView: UICollectionViewCell {
    
    var titleLab : UILabel!
    var picImgView : UIImageView!
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        setUpUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // 子视图
    func setUpUI() {
        
        titleLab = UILabel(frame: CGRect(x: 0, y: frame.height-40, width: frame.width, height: 30))
        titleLab?.text = "Test"
        titleLab.textAlignment = .center
        titleLab.font = UIFont.systemFont(ofSize: 13)
        titleLab.alpha = 0.7
        addSubview(titleLab)
        
        let img = UIImage(named: "setting")
        
        picImgView = UIImageView(image: img)
        picImgView.bounds = CGRect(x: 0, y: 0, width: 20, height: 20)
        picImgView.center = CGPoint(x: frame.width/2.0, y: (frame.height-30)/2.0)
        addSubview(picImgView)
        
        
    }

}
