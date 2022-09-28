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

    let img_RxSwift = UIImage(named: "RxSwift.png")
    let img_alamofire = UIImage(named: "alamofire.png")
    let img_amplitude = UIImage(named: "amplitude.png")
    let img_antitypical_Result = UIImage(named: "antitypical_Result.png")
    let img_Appboy = UIImage(named: "Appboy.png")
    let img_AppsFlyerFramework = UIImage(named: "AppsFlyerFramework.png")
    let img_EFCountingLabel = UIImage(named: "EFCountingLabel.jpeg")
    let img_Facebook = UIImage(named: "Facebook.png")
    let img_Flipboard = UIImage(named: "Flipboard.png")
    let img_GoogleToolboxForMac = UIImage(named: "GoogleToolboxForMac.png")
    let img_GzipSwift = UIImage(named: "GzipSwift.png")
    let img_KakaoOpenSDK = UIImage(named: "KakaoOpenSDK.png")
    let img_Kingfisher = UIImage(named: "Kingfisher.png")
    let img_lottie_ios = UIImage(named: "lottie_ios.png")
    let img_Moya = UIImage(named: "Moya.png")
    let img_nanopb = UIImage(named: "nanopb.jpeg")
    let img_Protobuf = UIImage(named: "Protobuf.png")
    let img_Quick = UIImage(named: "Quick.png")
    let img_Realm = UIImage(named: "Realm.png")
    let img_RNCryptor = UIImage(named: "RNCryptor.png")
    let img_RxAppState = UIImage(named: "RxAppState.png")
    let img_SDWebImage = UIImage(named: "SDWebImage.png")
    let img_slackhq = UIImage(named: "slackhq.png")
    let img_SnapKit = UIImage(named: "SnapKit.png")
    let img_Socket_IO = UIImage(named: "Socket_IO.png")
    let img_SwiftyJSON = UIImage(named: "SwiftyJSON.png")
    let img_SwiftyRSA = UIImage(named: "SwiftyRSA.png")
    let img_TrueTime = UIImage(named: "TrueTime.png")
    let img_ZemdeskSDK = UIImage(named: "ZemdeskSDK.png")
    let img_CryptoSwift = UIImage(named: "CryptoSwift.jpg")
    let img_etc = UIImage(named: "etc.png")
    
    
    var isWarningRed = true
    
    @IBOutlet var Warning_Color: UIImageView!
    
    override func viewDidLoad() {
           super.viewDidLoad()
        Warning_Color.image = img_RxSwift
        
        let ad = UIApplication.shared.delegate as? AppDelegate
                      ad?.paramWarn = self.Warning_Color.image
    }
    
    
    @IBAction func RxSwift(_ sender: UIButton) {
                Warning_Color.image = img_RxSwift
        
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func alamofire(_ sender: UIButton) {
                Warning_Color.image = img_alamofire
        
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        
        }
    
    
    @IBAction func amplitude(_ sender: UIButton) {
                Warning_Color.image = img_amplitude
        
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func antitypical_Result(_ sender: UIButton) {
                Warning_Color.image = img_antitypical_Result
        
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func Appboy(_ sender: UIButton) {
                Warning_Color.image = img_Appboy
        
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func AppsFlyerFramework(_ sender: UIButton) {
                Warning_Color.image = img_AppsFlyerFramework
        
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }

    
    @IBAction func EFCountingLabel(_ sender: UIButton) {
                Warning_Color.image = img_EFCountingLabel
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func Facebook(_ sender: UIButton) {
                Warning_Color.image = img_Facebook
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func Flipboard(_ sender: UIButton) {
                Warning_Color.image = img_Flipboard
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func GoogleToolboxForMac(_ sender: UIButton) {
                Warning_Color.image = img_GoogleToolboxForMac
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func GzipSwift(_ sender: UIButton) {
                Warning_Color.image = img_GzipSwift
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func KakaoOpenSDK(_ sender: UIButton) {
                Warning_Color.image = img_KakaoOpenSDK
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func Kingfisher(_ sender: UIButton) {
                Warning_Color.image = img_Kingfisher
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func lottie_ios(_ sender: UIButton) {
                Warning_Color.image = img_lottie_ios
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func Moya(_ sender: UIButton) {
                Warning_Color.image = img_Moya
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func nanopb(_ sender: UIButton) {
                Warning_Color.image = img_nanopb
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    
    @IBAction func Protobuf(_ sender: UIButton) {
                Warning_Color.image = img_Protobuf
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func Quick(_ sender: UIButton) {
                Warning_Color.image = img_Quick
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func Realm(_ sender: UIButton) {
                Warning_Color.image = img_Realm
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func RNCryptor(_ sender: UIButton) {
                Warning_Color.image = img_RNCryptor
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    
    @IBAction func RxAppState(_ sender: UIButton) {
                Warning_Color.image = img_RxAppState
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func SDWebImage(_ sender: UIButton) {
                Warning_Color.image = img_SDWebImage
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func slackhq(_ sender: UIButton) {
                Warning_Color.image = img_slackhq
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func SnapKit(_ sender: UIButton) {
                Warning_Color.image = img_SnapKit
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func Socket_IO(_ sender: UIButton) {
                Warning_Color.image = img_Socket_IO
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func SwiftyJSON(_ sender: UIButton) {
                Warning_Color.image = img_SwiftyJSON
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func SwiftyRSA(_ sender: UIButton) {
                Warning_Color.image = img_SwiftyRSA
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func TrueTime(_ sender: UIButton) {
                Warning_Color.image = img_TrueTime
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func ZemdeskSDK(_ sender: UIButton) {
                Warning_Color.image = img_ZemdeskSDK
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func CryptoSwift(_ sender: UIButton) {
                Warning_Color.image = img_CryptoSwift
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
    @IBAction func etc(_ sender: UIButton) {
                Warning_Color.image = img_etc
        let ad = UIApplication.shared.delegate as? AppDelegate
                        ad?.paramWarn = self.Warning_Color.image
        }
    
}
