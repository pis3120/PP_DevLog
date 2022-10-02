//
//  WarningLightChek.swift
//  TadaNote
//
//  Created by 박인서 on 23/02/2020.
//  Copyright © 2020 frolic. All rights reserved.
//

//
import UIKit

class WarningLightCheck: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    private var frameworkName: String = "RxSwift.png"
    
    var isWarningRed = true
    
    @IBOutlet var Warning_Color: UIImageView!
    
    override func viewDidLoad() {
           super.viewDidLoad()
        frameworkName = "RxSwift.png"
        Warning_Color.image = UIImage(named: frameworkName)
        
        let ad = UIApplication.shared.delegate as? AppDelegate
                      ad?.paramWarn = self.Warning_Color.image
    }
    
    
    @IBAction func RxSwift(_ sender: UIButton) {
        frameworkName = "RxSwift.png"
                Warning_Color.image = UIImage(named: frameworkName)
        
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func alamofire(_ sender: UIButton) {
        frameworkName = "alamofire.png"
                Warning_Color.image = UIImage(named: frameworkName)
        
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        
        }
    
    @IBAction func amplitude(_ sender: UIButton) {
        frameworkName = "amplitude.png"
                Warning_Color.image = UIImage(named: frameworkName)
        
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func antitypical_Result(_ sender: UIButton) {
        frameworkName = "antitypical_Result.png"
                Warning_Color.image = UIImage(named: frameworkName)
        
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func Appboy(_ sender: UIButton) {
        frameworkName = "Appboy.png"
                Warning_Color.image = UIImage(named: frameworkName)
        
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func AppsFlyerFramework(_ sender: UIButton) {
        frameworkName = "AppsFlyerFramework.png"
                Warning_Color.image = UIImage(named: frameworkName)
        
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }

    
    @IBAction func EFCountingLabel(_ sender: UIButton) {
        frameworkName = "EFCountingLabel.jpeg"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func Facebook(_ sender: UIButton) {
        frameworkName = "Facebook.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func Flipboard(_ sender: UIButton) {
        frameworkName = "Flipboard.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func GoogleToolboxForMac(_ sender: UIButton) {
        frameworkName = "GoogleToolboxForMac.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func GzipSwift(_ sender: UIButton) {
        frameworkName = "GzipSwift.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func KakaoOpenSDK(_ sender: UIButton) {
        frameworkName = "KakaoOpenSDK.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func Kingfisher(_ sender: UIButton) {
        frameworkName = "Kingfisher.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func lottie_ios(_ sender: UIButton) {
        frameworkName = "lottie_ios.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func Moya(_ sender: UIButton) {
        frameworkName = "Moya.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func nanopb(_ sender: UIButton) {
        frameworkName = "nanopb.jpeg"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    
    @IBAction func Protobuf(_ sender: UIButton) {
        frameworkName = "Protobuf.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func Quick(_ sender: UIButton) {
        frameworkName = "Quick.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func Realm(_ sender: UIButton) {
        frameworkName = "Realm.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func RNCryptor(_ sender: UIButton) {
        frameworkName = "RNCryptor.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    
    @IBAction func RxAppState(_ sender: UIButton) {
        frameworkName = "RxAppState.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func SDWebImage(_ sender: UIButton) {
        frameworkName = "SDWebImage.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func slackhq(_ sender: UIButton) {
        frameworkName = "slackhq.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func SnapKit(_ sender: UIButton) {
        frameworkName = "SnapKit.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func Socket_IO(_ sender: UIButton) {
        frameworkName = "Socket_IO.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func SwiftyJSON(_ sender: UIButton) {
        frameworkName = "SwiftyJSON.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func SwiftyRSA(_ sender: UIButton) {
        frameworkName = "SwiftyRSA.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func TrueTime(_ sender: UIButton) {
        frameworkName = "TrueTime.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func ZemdeskSDK(_ sender: UIButton) {
        frameworkName = "ZemdeskSDK.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func CryptoSwift(_ sender: UIButton) {
        frameworkName = "CryptoSwift.jpg"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func etc(_ sender: UIButton) {
        frameworkName = "etc.png"
                Warning_Color.image = UIImage(named: frameworkName)
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
}
