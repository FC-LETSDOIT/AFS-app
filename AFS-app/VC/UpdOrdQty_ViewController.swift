//
//  UpdOrdQty_ViewController
//  AFS-app
//
//  Created by 安井隼人 on 2018/04/28.
//  Copyright © 2018年 安井隼人. All rights reserved.
//

import UIKit
import AVFoundation

class UpdOrdQty_ViewController: UIViewController{
    @IBOutlet weak var QRLabel: UILabel!
    @IBOutlet weak var ItemNameHedderLabel: UILabel!
    @IBOutlet weak var OrdQtyHeadderLabel: UILabel!
    @IBOutlet weak var ChangeOrdQtyHedderLabel: UILabel!
    @IBOutlet weak var ItemTableView: UITableView!
    @IBOutlet weak var itemSearchBar: UISearchBar!
    
    @IBAction func ChangeOrdQtyAct(_ sender: Any) {
    }
    
    var QRM:QRManager?
    var CustTblViewCellSet:CustomTblViewCellSetting?
    var searchBar:searchBar?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.CustTblViewCellSet = CustomTblViewCellSetting()
        self.itemSearchBar.delegate = self.searchBar
        self.itemSearchBar.enablesReturnKeyAutomatically = true
        self.ItemTableView.rowHeight = 100
        self.ItemTableView.delegate = self.CustTblViewCellSet
        self.ItemTableView.dataSource = self.CustTblViewCellSet
    
    }
    
    @IBAction func button1(_ sender: Any) {
        self.QRM=QRManager()
        self.QRM?.getQR(qrview: self.view,qrlabel: self.QRLabel)
    }

}
