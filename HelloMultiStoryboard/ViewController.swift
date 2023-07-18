//
//  ViewController.swift
//  HelloMultiStoryboard
//
//  Created by 陳信彰 on 2023/7/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // 原始碼寫英文註解
    // Git敘述不強制用英文

    // 指定Storyboard並跳轉到從程式生成的VC
    @IBAction func go3BtnPressed(_ sender: Any) {
        
        // 指定UIStoryboard名稱,bundle:Main
        let function1 = UIStoryboard(name: "Function1", bundle: nil)
        
        // 指定Storyboard的VC(Storyboard ID)，生成實例
        let vc = function1.instantiateViewController(withIdentifier: "Func1VC")
        
        vc.title = "HiHi"   // 設定VC標題
        
        // 不會走Storyboard Segue轉場機制，不能用Prepare for segue，直接用"="設定屬性
        // 走navigationController機制
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func go4BtnPressed(_ sender: Any) {
        
        let function2 = UIStoryboard(name: "Function2", bundle: nil)
        let vc = function2.instantiateViewController(withIdentifier: "Func2VC")
        
        // 不走navigationController機制，用Modally轉場
        self.present(vc, animated: true)
        
        
        
    }
    
    
    
    
}

