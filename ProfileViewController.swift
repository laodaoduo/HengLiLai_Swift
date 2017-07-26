//
//  ProfileViewController.swift
//  HengLiLai_Swift
//
//  Created by Lwj on 2017/7/21.
//  Copyright © 2017年 LWJ. All rights reserved.
//

import UIKit

class ProfileViewController: BaseViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    let titles = ["投资记录","交易流水","消息中心","邀请好友","优惠券","帮助中心","联系客服","关于"]
    let imgs = ["reccord","deal","news","invite","discountcoupon","help","contact","about"]
    
    
    /// collectionView的代理方法
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellID", for: indexPath) as! ProfileCollectionView
        //        NSArray *arr = @[@"reccord",@"deal",@"news",@"invite",@"discountcoupon",@"help",@"contact",@"about"];
        
//        NSArray *itemTitleArr = @[@"投资记录",@"交易流水",@"消息中心",@"邀请好友",@"优惠券",@"帮助中心",@"联系客服",@"关于"];
        
        collectionViewCell.backgroundColor = UIColor.white
        collectionViewCell.picImgView.image = UIImage(named: imgs[indexPath.item])
        collectionViewCell.titleLab.text = titles[indexPath.item]
        return collectionViewCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Normal_Color
        
        self.automaticallyAdjustsScrollViewInsets = false
        myCollectionView()
        
        let img = UIImage(named: "setting")?.withRenderingMode(.alwaysOriginal)
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: Selector(("itemClick")))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: img, style: .plain, target: self, action: #selector(itemClick))
    }
    
    
    /// 配置collectionView
    func myCollectionView() {
        
        let layout = UICollectionViewFlowLayout()
        let itemHW = (view.frame.width-2)/3;
        
        layout.itemSize = CGSize(width: itemHW, height: itemHW)
        //每行之间竖直之间的最小间距 （可以大于）
        layout.minimumLineSpacing = 1
        //同行的cell与cell之间水平之间的最小间距
        layout.minimumInteritemSpacing = 1
        let collectionView = UICollectionView(frame: CGRect(x: 0,y:200,width :view.frame.width ,height :view.frame.height-200-40-20), collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.bounces = true
        collectionView.backgroundColor = Normal_Color
//        collectionView.register(<#T##cellClass: AnyClass?##AnyClass?#>, forCellWithReuseIdentifier: <#T##String#>)
        collectionView.register(ProfileCollectionView.self, forCellWithReuseIdentifier: "CellID")
        
        view.addSubview(collectionView)
    }
    
    @objc func itemClick() {
        print("............================.............")
    }

}
//#selector(getter: <#T##@objc property#>)
//#selector(setter: <#T##@objc property#>)
//fileprivate extension Selector {
//    static let firstNameGetter = #selector(getter: Person.firstName)
//    static let firstNameSetter = #selector(setter: Person.firstName)
//}

