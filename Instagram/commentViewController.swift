//
//  commentViewController.swift
//  Instagram
//
//  Created by tetsuya nomata on 2019/11/10.
//  Copyright © 2019 tetsuya nomata. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class commentViewController: UIViewController {
    @IBOutlet weak var commentTextField: UITextView!
    
    
    //    コメント追加ボタンが押された時
    @IBAction func addCommentButton(_ sender: Any) {
        print("DEBUG_PRINT: コメント追加ボタンがタップされました。")
        
        let name = Auth.auth().currentUser?.displayName
        
        let commentRef = Database.database().reference().child(Const.PostPath)
        let commentDic = ["comment": commentTextField.text!, "commentname": name!]
        commentRef.childByAutoId().setValue(commentDic)
        
        
        // 全てのモーダルを閉じる
        UIApplication.shared.keyWindow?.rootViewController?.dismiss(animated: true, completion: nil)
        
    }
    
    //    コメントキャンセルボタンが押された時
    @IBAction func cancelButton(_ sender: Any) {
        print("DEBUG_PRINT: cancelボタンがタップされました。")
        // 画面を閉じる
        self.dismiss(animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        commentTextField.layer.masksToBounds = true
        commentTextField.layer.cornerRadius = 20.0
        commentTextField.layer.borderWidth = 1
        commentTextField.layer.borderColor = UIColor.black.cgColor
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
