//
//  SideBarVC.swift
//  TadaNote
//
//  Created by 박인서 on 2020/03/02.
//  Copyright © 2020 frolic. All rights reserved.
//

import UIKit

class SideBarVC: UITableViewController {
    let uinfo = UserInfoManager()

    let nameLabel = UILabel()
    let driverCodeLabel = UILabel()
    let profileImage = UIImageView()
    
    let titles = ["  Profile", "  Logging", "  Notice", "  Help"]
    
    let icons = [
    UIImage(named: "icon001.jpeg"),
    UIImage(named: "icon002.png"),
    UIImage(named: "icon003.png"),
    UIImage(named: "icon004.png")
    ]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.titles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let id = "menucell"
        let cell = tableView.dequeueReusableCell(withIdentifier: id) ??
            UITableViewCell(style: .default, reuseIdentifier: id)
        
        cell.textLabel?.text = self.titles[indexPath.row]
        cell.imageView?.image = self.icons[indexPath.row]
        
        cell.textLabel?.font = UIFont.systemFont(ofSize:15)
        return cell
    }
    
    override func viewDidLoad() {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 70))
        
        headerView.backgroundColor = UIColor.darkGray
        self.tableView.tableHeaderView = headerView
        
        self.nameLabel.frame = CGRect(x: 70, y: 15, width: 100, height: 30)
        self.nameLabel.textColor = UIColor.white
        self.nameLabel.font = UIFont.boldSystemFont(ofSize: 15)
        self.nameLabel.backgroundColor = UIColor.clear
        
        headerView.addSubview(self.nameLabel)
        
        self.driverCodeLabel.frame = CGRect(x: 70, y: 30, width: 100, height: 30)
        self.driverCodeLabel.textColor = UIColor.white
        self.driverCodeLabel.font = UIFont.systemFont(ofSize: 11)
        self.driverCodeLabel.backgroundColor = UIColor.clear
               
        headerView.addSubview(self.driverCodeLabel)
        
        self.profileImage.frame = CGRect(x: 10, y: 10, width: 50, height: 50)
        
        self.profileImage.layer.cornerRadius = (self.profileImage.frame.width / 2)
        self.profileImage.layer.borderWidth = 0
        self.profileImage.layer.masksToBounds = true
        
        view.addSubview(self.profileImage)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
       
        switch indexPath.row {
        case 0:
            let uv = self.storyboard?.instantiateViewController(withIdentifier: "_Profile")
                self.present(uv!, animated: true)
                    self.revealViewController()?.revealToggle(self)
        
        case 1:
                    
            let offcheck = self.storyboard?.instantiateViewController(withIdentifier: "OffWorkForm")
                     
                     let target = self.revealViewController().frontViewController as! UINavigationController
                     
                     target.pushViewController(offcheck!, animated: true)
                     self.revealViewController().revealToggle(self)
            
        case 2:
                    
                     let noti = self.storyboard?.instantiateViewController(withIdentifier: "_Notice")
                                self.present(noti!, animated: true)
                                    self.revealViewController()?.revealToggle(self)
                  
                               
       default :
                                    
                             let infom = self.storyboard?.instantiateViewController(withIdentifier: "_Info")
                                 self.present(infom!, animated: true)
                                     self.revealViewController()?.revealToggle(self)
        
            

        }
    }
    
        override func viewWillAppear(_ animated: Bool) {
            self.nameLabel.text = self.uinfo.name ?? "Guest"
            self.driverCodeLabel.text = self.uinfo.account ?? ""
            self.profileImage.image = self.uinfo.profile
        }
    
}

