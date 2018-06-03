//
//  searchBarDelegate.swift
//  AFS-app
//
//  Created by 安井隼人 on 2018/06/04.
//  Copyright © 2018年 安井隼人. All rights reserved.
//

import Foundation
import UIKit

class searchBar:NSObject,UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
    }
    //検索結果ボタン押下時のメソッド
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        //検索結果配列を空にする
        searchResult.removeAll()
        
        if searchText.isEmpty {
            searchResult = catDataArray
        } else {
            
            searchResult = catDataArray.filter {
                
                // 前方一致の場合
                // $0.title.hasPrefix(searchText)
                
                // 後方一致の場合
                // $0.title.hasSuffix(searchText)
                
                // 部分一致の場合
                $0.title.contains(searchText)
            }
        }
        allBusTableView.reloadData()
    }
}
