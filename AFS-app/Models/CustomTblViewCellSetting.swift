//
//  SetCustomTableViewCell.swift
//  AFS-app
//
//  Created by 安井隼人 on 2018/05/20.
//  Copyright © 2018年 安井隼人. All rights reserved.
//

import Foundation
import UIKit
struct itemData {
    /// 商品名
    var itemName: String
    /// 画像のファイル名
    var imageName: String
    /// 推奨数
    var CurOrdQty: Int
}

class CustomTblViewCellSetting:NSObject,UITableViewDelegate, UITableViewDataSource{
    var itemDataArray: [itemData] = []
    //searchBar検索結果配列
    var searchResult: [itemData] = []
    
    func DispalyDataCreator(){
        itemDataArray.append(itemData(itemName: "猫１", imageName: "cat1.jpg", CurOrdQty: 123))
        itemDataArray.append(itemData(itemName: "猫2", imageName: "cat2.jpg", CurOrdQty: 456))
        searchResult = itemDataArray
//    let image1 = UIImage(named: "cat1.jpg")
//    let image2 = UIImage(named: "cat2.jpg")
//    /// 画像のファイル名
//    let imageNames = ["cat1.jpg", "cat2.jpg"]
//
//    /// 商品名
//    let imageTitles = ["ネコ1", "ネコ2"]
//
//    /// OriginalOrdQty
//    let CurOrdQty = [
//        123,
//        456,
//        ]
    }
//表示するセルの数を指定する
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DispalyDataCreator()
        return searchResult.count
    }
    //セルに値を設定する
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:ItemCustomTableViewCell=tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! ItemCustomTableViewCell
        let itemData = searchResult[indexPath.row]
        cell.setCell(itemData.itemName, imageName: itemData.imageName, CurOrdQtyLabel: itemData.CurOrdQty)
//        cell.ItemImageView.image = UIImage(named:imageNames[indexPath.row])
//        cell.ItemNameLabel.text = imageTitles[indexPath.row]
//        cell.CurOrdQtyLabel.int = CurOrdQty[indexPath.row]
//        cell.isUserInteractionEnabled = false
        return cell
    }
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 300 // セルの高さの見積もり
//    }
//
//    private func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        return UITableViewAutomaticDimension
//    }
}
