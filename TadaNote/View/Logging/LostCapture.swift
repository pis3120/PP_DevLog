//
//  OffWorkRead.swift
//  TadaNote
//
//  Created by 박인서 on 2020/02/27.
//  Copyright © 2020 frolic. All rights reserved.
//

import UIKit
import MapKit
import Then
import SnapKit

class LostCapture: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var preview: UIImageView!
    @IBOutlet weak var cart: UIImageView!
    @IBOutlet weak var warn: UIImageView!
    
    let placeholder = "(ex : The mouse cursor of the TextView was decorated using the SnapKit)"
    let activityTextView = UITextView().then {
            $0.font = .systemFont(ofSize: 14)
            $0.layer.cornerRadius = 18
            $0.backgroundColor = .black
            $0.tintColor = .systemPink
            $0.textContainerInset = UIEdgeInsets(top: 18, left: 18, bottom: 18, right: 18)
        }
        
        let letterNumLabel = UILabel().then {
            $0.text = "0/250"
            $0.font = .systemFont(ofSize: 16)
            $0.textColor = .gray
            $0.textAlignment = .right
        }
        
        // MARK: - Lifecycle
        override func viewDidLoad() {
            super.viewDidLoad()
            configUI()
            setupAutoLayout()
            setupTextView()
            
            let ac = UIApplication.shared.delegate as? AppDelegate
            let ad = UIApplication.shared.delegate as? AppDelegate
            
                 
                let carimg = ac?.paramCar
                let warnimg = ad?.paramWarn
             
                cart.image = carimg
                warn.image = warnimg
            
        }
        
        // MARK: - Custom Method
        func configUI() {
            view.backgroundColor = .white
        }
        
        func setupAutoLayout() {
            view.addSubview(activityTextView)
            view.addSubview(letterNumLabel)
            
            activityTextView.snp.makeConstraints { make in
                make.top.equalTo(200)
                make.centerX.equalToSuperview()
                make.height.equalTo(190)
                make.width.equalTo(319)
            }
            
            letterNumLabel.snp.makeConstraints { make in
                make.top.equalTo(activityTextView.snp.bottom).offset(6)
                make.trailing.equalToSuperview().inset(28)
            }
        }
        
        func setupTextView() {
            activityTextView.delegate = self
            activityTextView.text = placeholder /// 초반 placeholder 생성
            activityTextView.textColor = .white /// 초반 placeholder 색상 설정
        }
        
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true) /// 화면을 누르면 키보드 내려가게 하는 것
        }
    }

    extension LostCapture: UITextViewDelegate {
        func textViewDidBeginEditing(_ textView: UITextView) {
            /// 텍스트뷰 입력 시 테두리 생기게 하기
            activityTextView.layer.borderWidth = 1
            activityTextView.layer.borderColor = UIColor.systemPink.cgColor
            
            /// 플레이스홀더
            if textView.text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                activityTextView.textColor = .gray
                activityTextView.text = placeholder
            } else if textView.text == placeholder {
                activityTextView.textColor = .white
                activityTextView.text = nil
            }
        }
        
        func textViewDidChange(_ textView: UITextView) {
            /// 글자 수 제한
            if activityTextView.text.count > 250 {
                activityTextView.deleteBackward()
            }
            
            /// 아래 글자 수 표시되게 하기
            letterNumLabel.text = "\(activityTextView.text.count)/250"
            
            /// 글자 수 부분 색상 변경
            let attributedString = NSMutableAttributedString(string: "\(activityTextView.text.count)/250")
            attributedString.addAttribute(.foregroundColor, value: UIColor.systemPink, range: ("\(activityTextView.text.count)/250" as NSString).range(of:"\(activityTextView.text.count)"))
            letterNumLabel.attributedText = attributedString
        }
        
        func textViewDidEndEditing(_ textView: UITextView) {
            /// 텍스트뷰 입력 완료시 테두리 없애기
            activityTextView.layer.borderWidth = 0
            
            /// 플레이스홀더
            if textView.text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty || textView.text == placeholder {
                activityTextView.textColor = .white
                activityTextView.text = placeholder
                letterNumLabel.textColor = .lightGray /// 텍스트 개수가 0일 경우에는 글자 수 표시 색상이 모두 gray 색이게 설정
                letterNumLabel.text = "0/250"
            }
        }

    
  // 카메라 버튼을 클릭했을 때 호출되는 메소드
    @IBAction func btnCamera(_ sender: Any) {
        let select = UIAlertController(title: "Please select a location to import images from", message: nil, preferredStyle: .actionSheet)
        select.addAction(UIAlertAction(title: "Camera", style: .default) { (_) in
          self.presentPicker(source: .camera)
        })
        select.addAction(UIAlertAction(title: "Album", style: .default) { (_) in
            self.presentPicker(source: .savedPhotosAlbum)
        })
        select.addAction(UIAlertAction(title: "Photo Library", style: .default) { (_) in
            self.presentPicker(source: .photoLibrary)
        })
        self.present(select, animated: false)
    }
    
  // 실제로 이미지 피커를 실행하는 메소드

    
    func presentPicker(source: UIImagePickerController.SourceType) {
        guard UIImagePickerController.isSourceTypeAvailable(source) == true else {
          let alert = UIAlertController(title: "This type cannot be used.", message: nil, preferredStyle: .alert)
          self.present(alert, animated: false)
          return
        }

    // 이미지 피커 인스턴스를 생성한다.
    let picker = UIImagePickerController()
    
    picker.delegate = self
    picker.allowsEditing = true
    picker.sourceType = source
    
    // 이미지 피커 화면을 표시한다.
    self.present(picker, animated: false)
  }
  
    // 이미지 선택을 완료했을 때 호출되는 메소드
      func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // 선택된 이미지를 미리보기에 표시한다.
        self.preview.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        
        // 이미지 피커 컨트롤러를 닫는다.
        picker.dismiss(animated: false)
      }

    
    
      @IBAction func btnSave(_ sender: Any) {
          // ① 내용을 입력하지 않았을 경우, 경고한다.
    let alert = UIAlertController(title:nil, message: "Is this correct?",
                                  preferredStyle: .alert)
    
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        let okAction = UIAlertAction(title: "OK", style: .default){ (_) in
            
            
                let data = OffWorkData()
            
              data.carTypeImg_Data = self.cart.image
              data.warningColor_Data = self.warn.image
              data.lostContents_Data = self.activityTextView.text // 내용
              data.lostImg_Data = self.preview.image // 이미지
              data.regdate = Date() // 작성 시각
              
              // ③ 앱 델리게이트 객체를 읽어온 다음, memolist 배열에 MemoData 객체를 추가한다.
              let appDelegate = UIApplication.shared.delegate as! AppDelegate
            
                appDelegate.memolist.append(data)
            
               self.navigationController?.popToRootViewController(animated: true)
                  
               
                }
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        
        self.present(alert, animated: false)
    // 콘텐츠 뷰 영역에 들어갈 뷰 컨트롤러를 생성하고, 알림창에 등록한다.
         let contentVC = MapKitViewController()
         // 뷰 컨트롤러를 알림창의 콘텐츠 뷰 컨트롤러 속성에 등록한다.
         alert.setValue(contentVC, forKeyPath: "contentViewController")
        
      
    }

}




