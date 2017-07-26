//
//  MainTabBarController.swift
//  HengLiLai_Swift
//
//  Created by Lwj on 2017/7/21.
//  Copyright © 2017年 LWJ. All rights reserved.
//
import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setRootViewController(viewControl: HomeViewController(), title: "首页", imgName: "home2", selectImgName: "home")
        setRootViewController(viewControl: InvestViewController(), title: "理财", imgName: "managemoney2", selectImgName: "managemoney")
        setRootViewController(viewControl: ProfileViewController(), title: "我的", imgName: "personage2", selectImgName: "personage")
        
    }
    
    // 设置tabBar
    func setRootViewController(viewControl : BaseViewController, title : String, imgName : String, selectImgName : String)  {
        
        let rootNav = BaseNavigationController(rootViewController: viewControl)
        let normalImg = UIImage(named: imgName)
        let selectImg = UIImage(named: selectImgName)?.withRenderingMode(.alwaysOriginal)
        rootNav.tabBarItem = UITabBarItem(title: title, image: normalImg, selectedImage: selectImg)
        rootNav.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor.rawValue: UIColor.red], for: .selected)
        self.addChildViewController(rootNav)
    }

}
