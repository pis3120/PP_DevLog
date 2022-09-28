//
//  NoticeVC.swift
//  TadaNote
//
//  Created by 박인서 on 2020/03/02.
//  Copyright © 2020 frolic. All rights reserved.
//
import UIKit

class NoticeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
     let img_notice = UIImage(named: "noticeImg.jpg")
    
    @IBOutlet var Notice_Img: UIImageView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        return cell
    }
    
  
  override func viewDidLoad() {
    self.navigationItem.title = "Notice"
    let backBtn = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector( close(_:) ))
    self.navigationItem.leftBarButtonItem = backBtn
    
    Notice_Img.image = img_notice
    
}
    
    @objc func close(_ sender: Any) {
       self.presentingViewController?.dismiss(animated: true)
     }

}

