//
//  ProfileViewController.swift
//  HengLiLai_Swift
//
//  Created by Lwj on 2017/7/21.
//  Copyright © 2017年 LWJ. All rights reserved.
//

import UIKit

class ProfileViewController: BaseViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    /// collectionView的代理方法
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath)
        collectionViewCell.backgroundColor = UIColor.red
        return collectionViewCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        myCollectionView()
        
        let img = UIImage(named: "setting")?.withRenderingMode(.alwaysOriginal)
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: Selector(("itemClick")))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: img, style: .plain, target: self, action: #selector(itemClick))
    }
    
    
    /// 配置collectionView
    func myCollectionView() {
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 50, height: 50)
        let collectionView = UICollectionView(frame: CGRect(x: 0,y:0,width :400,height :400), collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor.yellow
//        collectionView.register(<#T##cellClass: AnyClass?##AnyClass?#>, forCellWithReuseIdentifier: <#T##String#>)
        
        collectionView.register(NSClassFromString("UICollectionViewCell"), forCellWithReuseIdentifier: "cellID")
        
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

