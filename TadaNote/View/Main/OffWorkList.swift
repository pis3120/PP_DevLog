//
//  OffWorkList.swift
//  TadaNote
//
//  Created by 박인서 on 22/02/2020.
//  Copyright © 2020 frolic. All rights reserved.
//

import UIKit

class OffWorkList: UITableViewController {

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        let count = self.appDelegate.memolist.count
        
        return count
    }

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let row = self.appDelegate.memolist[indexPath.row]
        let cellId = row.lostImg_Data == nil ? "memoCell" : "memoCell_LostImg"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as! OffWorkCell
        
        
        cell.cell_CarTypeImg?.image = row.carTypeImg_Data
        cell.cell_WarningImg?.image = row.warningColor_Data
        cell.cell_CarTypeImg?.image = row.carTypeImg_Data
        cell.cell_WarningImg?.image = row.warningColor_Data
        cell.cell_LostImg?.image = row.lostImg_Data
        
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        cell.regdate?.text = formatter.string(from: row.regdate!)
        
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let row = self.appDelegate.memolist[indexPath.row]
                                        
        
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "MemoRead") as? OffWorkRead else{
            return
        }
        
        vc.param = row
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    override func viewDidLoad() {
        if let revealVC = self.revealViewController() {
            
            let btn = UIBarButtonItem()
            btn.image = UIImage(named: "sidemenu.png")
            btn.target = revealVC
            btn.action = #selector(revealVC.revealToggle(_:))
            
            self.navigationItem.leftBarButtonItem = btn
            self.view.addGestureRecognizer(revealVC.panGestureRecognizer())
        }
    }
    
}


