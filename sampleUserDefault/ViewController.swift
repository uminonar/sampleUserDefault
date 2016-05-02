//
//  ViewController.swift
//  sampleUserDefault
//
//  Created by RIho OKubo on 2016/05/02.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ユーザーデフォルトから保存されたデータを取り出す
        
        var myDefault = NSUserDefaults.standardUserDefaults()
        
        //データを呼び出して
        
        var myStr = myDefault.stringForKey("myString")
        
        
        //文字列が入っていたら、表示する
        
        print(myStr)
        myTextField.text = myStr
    }

   
    @IBAction func tapReturn(sender: UITextField) {
        //ユーザーデフォルトを用意する
        var myDefault = NSUserDefaults.standardUserDefaults()
        
        //データを書き込んで
        myDefault.setObject(sender.text, forKey: "myString")
        
        //即反映させる
        myDefault.synchronize()
        
        
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

