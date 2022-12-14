//
//  ProfileVC.swift
//  TadaNote
//
//  Created by 박인서 on 2020/03/02.
//  Copyright © 2020 frolic. All rights reserved.
//


import UIKit
class ProfileVC: UIViewController, UITableViewDelegate, UITableViewDataSource, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  let uinfo = UserInfoManager() // 개인 정보 관리 매니저
  let profileImage = UIImageView() // 프로필 사진 이미지
  let tv = UITableView() // 프로필 목록
  
    
    
  override func viewDidLoad() {
    self.navigationItem.title = "Profile"
    // 뒤로 가기 버튼 처리
    let backBtn = UIBarButtonItem(title: "Close", style: .plain, target: self, action: #selector( close(_:) ))
    self.navigationItem.leftBarButtonItem = backBtn
    
    // 추가되는 부분) 배경 이미지 설정
    let bg = UIImage(named: "profile.png")
    let bgImg = UIImageView(image: bg)
    bgImg.frame.size = CGSize(width: bgImg.frame.size.width, height: bgImg.frame.size.height)
    bgImg.center = CGPoint(x: self.view.frame.width / 2, y: 80)
    bgImg.layer.cornerRadius = bgImg.frame.size.width / 3
    bgImg.layer.borderWidth = 0
    bgImg.layer.masksToBounds = true
    
    self.view.addSubview(bgImg)
    
    // ① 프로필 사진에 들어갈 기본 이미지
    //let image = UIImage(named: "account.jpg")
    let image = self.uinfo.profile
    
    // ② 프로필 이미지 처리
    self.profileImage.image = image
    self.profileImage.frame.size = CGSize(width: 100, height: 100)
    self.profileImage.center = CGPoint(x: self.view.frame.width / 2, y: 270)
    
    // ③ 프로필 이미지 둥글게 만들기
    self.profileImage.layer.cornerRadius = self.profileImage.frame.width / 2
    self.profileImage.layer.borderWidth = 0
    self.profileImage.layer.masksToBounds = true
    
    // ④ 루트 뷰에 추가
    self.view.addSubview(self.profileImage)
    
    // 테이블 뷰
    self.tv.frame = CGRect(x: 0,
                           y: self.profileImage.frame.origin.y + self.profileImage.frame.size.height + 20,
                           width: self.view.frame.width,
                           height: 100)
    self.tv.dataSource = self
    self.tv.delegate = self
    self.view.addSubview(self.tv)
    
    // 내비게이션 바 숨김 처리
    self.navigationController?.navigationBar.isHidden = true
    
    // 최초 화면 로딩 시 로그인 상태에 따라 적절히 로그인/로그아웃 버튼을 출력한다.
    self.drawBtn()
    
    let tap = UITapGestureRecognizer(target: self, action: #selector(profile(_:)))
    self.profileImage.addGestureRecognizer(tap)
    self.profileImage.isUserInteractionEnabled = true
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 2
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: .value1, reuseIdentifier: "cell")
    
    cell.textLabel?.font = UIFont.systemFont(ofSize: 14)
    cell.detailTextLabel?.font = UIFont.systemFont(ofSize: 13)
    cell.accessoryType = .disclosureIndicator
    
    switch indexPath.row {
      case 0 :
        cell.textLabel?.text = "Developer's Name."
        cell.detailTextLabel?.text = self.uinfo.name ?? "login"
      case 1 :
        cell.textLabel?.text = "Developer's ID."
        cell.detailTextLabel?.text = self.uinfo.account ?? "login"
      default :
        ()
    }
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if self.uinfo.isLogin == false {
      // 로그인되어 있지 않다면 로그인 창을 띄워 준다.
      self.doLogin(self.tv)
    }
  }
  
  @objc func close(_ sender: Any) {
    self.presentingViewController?.dismiss(animated: true)
  }
  
  @objc func doLogin(_ sender: Any) {
    let loginAlert = UIAlertController(title: "Developer login", message: nil,
                                       preferredStyle: .alert)
    // 알림창에 들어갈 입력폼 추가
    loginAlert.addTextField() { (tf) in
      tf.placeholder = "ID"
    }
    loginAlert.addTextField() { (tf) in
      tf.placeholder = "PW"
      tf.isSecureTextEntry = true
    }
    // 알림창 버튼 추가
    loginAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
    loginAlert.addAction(UIAlertAction(title: "login", style: .destructive) { (_) in
      let account = loginAlert.textFields?[0].text ?? "" // 첫 번째 필드 : 계정
      let passwd = loginAlert.textFields?[1].text ?? "" // 두 번째 필드 : 비밀번호
      
      if self.uinfo.login(account: account, passwd: passwd) {
        self.tv.reloadData() // 추가) 테이블 뷰를 갱신한다.
        self.profileImage.image = self.uinfo.profile // 추가) 이미지 프로필을 갱신한다.
        self.drawBtn() // 로그인 상태에 따라 적절히 로그인/로그아웃 버튼을 출력한다.
      } else {
        let msg = "Login Fail!"
        let alert = UIAlertController(title: nil, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel))
        self.present(alert, animated: false)
      }
    })
    self.present(loginAlert, animated: false)
  }
  
  @objc func doLogout(_ sender: Any) {
    let msg = "Do you want to logout?"
    let alert = UIAlertController(title: nil, message: msg, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
    alert.addAction(UIAlertAction(title: "OK", style: .destructive) { (_) in
      if self.uinfo.logout() {
        self.tv.reloadData() // 추가) 테이블 뷰를 갱신한다.
        self.profileImage.image = self.uinfo.profile // 추가) 이미지 프로필을 갱신한다.
        self.drawBtn() // 로그인 상태에 따라 적절히 로그인/로그아웃 버튼을 출력한다.
      }
    })
    self.present(alert, animated: false)
  }
  
  func drawBtn() {
    // 버튼을 감쌀 뷰를 정의한다.
    let v = UIView()
    v.frame.size.width = self.view.frame.width
    v.frame.size.height = 40
    v.frame.origin.x = 0
    v.frame.origin.y = self.tv.frame.origin.y + self.tv.frame.height
    v.backgroundColor = UIColor(red:0.98, green:0.98, blue:0.98, alpha:1.0)
    
    self.view.addSubview(v)
    
    // 버튼을 정의한다.
    let btn = UIButton(type: .system)
    btn.frame.size.width = 100
    btn.frame.size.height = 30
    btn.center.x = v.frame.size.width / 2
    btn.center.y = v.frame.size.height / 2
    
    // 로그인 상태일 때는 로그아웃 버튼을, 로그아웃 상태일 때에는 로그인 버튼을 만들어 준다.
    if self.uinfo.isLogin == true {
      btn.setTitle("logout", for: .normal)
      btn.addTarget(self, action: #selector(doLogout(_:)), for: .touchUpInside)
    } else {
      btn.setTitle("login", for: .normal)
      btn.addTarget(self, action: #selector(doLogin(_:)), for: .touchUpInside)
    }
    v.addSubview(btn)
  }
  
    func imgPicker( _ source : UIImagePickerController.SourceType) {
    let picker = UIImagePickerController()
    picker.sourceType = source
    picker.delegate = self
    picker.allowsEditing = true
    self.present(picker, animated: true)
  }
  
  // 프로필 사진의 소스 타입을 선택하는 액션 메소드
  @objc func profile(_ sender : UIButton) {
    // 로그인되어 있지 않을 경우에는 프로필 이미지 등록을 막고 대신 로그인 창을 띄워 준다.
    guard self.uinfo.account != nil else {
      self.doLogin(self)
      return
    }
    let alert = UIAlertController(title: nil,
                                  message: "Please choose where to import your photos",
                                  preferredStyle: .actionSheet)
    // 카메라를 사용할 수 있으면
    if UIImagePickerController.isSourceTypeAvailable(.camera) {
      alert.addAction(UIAlertAction(title: "Camera", style: .default) { (_) in
        self.imgPicker(.camera)
      })
    }
    // 저장된 앨범을 사용할 수 있으면
    if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum) {
      alert.addAction(UIAlertAction(title: "Album", style: .default) { (_) in
        self.imgPicker(.savedPhotosAlbum)
      })
    }
    // 포토 라이브러리를 사용할 수 있으면
    if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
      alert.addAction(UIAlertAction(title: "Photo Library", style: .default) { (_) in
        self.imgPicker(.photoLibrary)
      })
    }
    // 취소 버튼 추가
    alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
    // 액션 시트 창 실행
    self.present(alert, animated: true)
  }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
           // 선택된 이미지를 미리보기에 표시한다.
        if let img = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            self.uinfo.profile = img
            self.profileImage.image = img
        }
        picker.dismiss(animated: true)
         }
}

