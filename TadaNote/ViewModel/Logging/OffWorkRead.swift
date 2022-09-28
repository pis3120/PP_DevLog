//
//  OffWorkRead.swift
//  TadaNote
//
//  Created by 박인서 on 2020/02/27.
//  Copyright © 2020 frolic. All rights reserved.
//

import UIKit

class OffWorkRead: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var param : OffWorkData?


    @IBOutlet var ReadCarType: UIImageView!
    @IBOutlet var ReadWarningColor: UIImageView!
    @IBOutlet var ReadLostCont: UITextView!
    @IBOutlet var ReadLostImg: UIImageView!
    
    override func viewDidLoad(){
        
        self.ReadCarType.image = param?.carTypeImg_Data
        self.ReadWarningColor.image = param?.warningColor_Data
        self.ReadLostCont.text = param?.lostContents_Data
        self.ReadLostImg.image = param?.lostImg_Data
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/HH:mm"
        let dateString = formatter.string(from: (param?.regdate)!)
        
        self.navigationItem.title = dateString
        // Do any additional setup after loading the view.
    }

}
