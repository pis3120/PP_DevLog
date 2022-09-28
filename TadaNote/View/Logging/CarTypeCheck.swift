//
//  CarTypeCheck.swift
//  TadaNote
//
//  Created by 박인서 on 23/02/2020.
//  Copyright © 2020 frolic. All rights reserved.
//

import UIKit

class CarTypeCheck: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let MAX_ARRARY_NUM = 5
    let PICKER_VIEW_COLUMN = 1
    
    var imageArrary = [UIImage?]()
    var imageFileName = [ "iOS", "macOS", "watchOS", "tvOS", "Multiplatform" ]
    
    @IBOutlet var carType_Picker: UIPickerView!
    @IBOutlet var carType_Image: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0 ..< MAX_ARRARY_NUM {
            let image = UIImage(named: imageFileName[i] + ".png")
            imageArrary.append(image)
        }
        
        carType_Image.image = imageArrary[0]
       
    }
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
 
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageFileName[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        carType_Image.image = imageArrary[row]

        let ac = UIApplication.shared.delegate as? AppDelegate
                ac?.paramCar = self.carType_Image.image
    }
    

}
