//
//  InfoVC.swift
//  TadaNote
//
//  Created by 박인서 on 2020/03/02.
//  Copyright © 2020 frolic. All rights reserved.
//

import UIKit

class InfoVC: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextViewDelegate {
    
    @IBOutlet weak var tv: UITextView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        return cell
    }
    
  
  override func viewDidLoad() {
      super.viewDidLoad()
      tv.delegate = self
      tv.text = "https://drive.google.com/drive/folders/147O2i6UrfNdLWwCVQ-jPxT9-vDv0iv_s?usp=sharing"
      tv.isEditable = false
      tv.dataDetectorTypes = .link
    
    self.navigationItem.title = "Help"
    let backBtn = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector( close(_:) ))
    self.navigationItem.leftBarButtonItem = backBtn
    
  
}
    
    @objc func close(_ sender: Any) {
       self.presentingViewController?.dismiss(animated: true)
     }

}

